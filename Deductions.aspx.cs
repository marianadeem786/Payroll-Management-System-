using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Application
{
    public partial class Deductions : System.Web.UI.Page
    {

        protected void AddAllowanceButton_Click(object sender, EventArgs e)
        {
            // Assuming you have the following variables accessible:
            int employeeId = Convert.ToInt32(EmployeeIdTextBox.Text);
            int deductionId = Convert.ToInt32(DeductionIdTextBox.Text);
            string type = TypeTextBox.Text;

            string dbConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(dbConnectionString))
            {
                SqlCommand command = new SqlCommand("AddEmployeeDeduction", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@employee_id", employeeId);
                command.Parameters.AddWithValue("@deduction_id", deductionId);
                command.Parameters.AddWithValue("@type", type);

                connection.Open();
                command.ExecuteNonQuery();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string dbConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            var queryString = "SELECT * FROM employee_deduction";
            var dbConnection = new SqlConnection(dbConnectionString);
            var dataAdapter = new SqlDataAdapter(queryString, dbConnection);

            var commandBuilder = new SqlCommandBuilder(dataAdapter);
            var ds = new DataSet();
            dataAdapter.Fill(ds);

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}