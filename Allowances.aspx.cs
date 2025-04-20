using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Application
{
    public partial class Allowances : System.Web.UI.Page
    {
        protected void AddAllowanceButton_Click(object sender, EventArgs e)
        {
            // Assuming you have the following variables accessible:
            int employeeId = Convert.ToInt32(EmployeeIdTextBox.Text);
            int allowanceId = Convert.ToInt32(AllowanceIdTextBox.Text);
            string type = TypeTextBox.Text;

            string dbConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(dbConnectionString))
            {
                SqlCommand command = new SqlCommand("AddEmployeeAllowance", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@employee_id", employeeId);
                command.Parameters.AddWithValue("@allowance_id", allowanceId);
                command.Parameters.AddWithValue("@type", type);

                connection.Open();
                command.ExecuteNonQuery();
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            string dbConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            var queryString = "SELECT * FROM employee_allowance"; // Added "FROM" keyword
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
