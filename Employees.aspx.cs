using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Project_Application
{
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        protected void AddEmployeeButton_Click(object sender, EventArgs e)
        {
            string name = NameTextBox.Text;
            int departmentId = Convert.ToInt32(DepartmentIdTextBox.Text);
            int positionId = Convert.ToInt32(PositionIdTextBox.Text);
            int salary = Convert.ToInt32(SalaryTextBox.Text);

            string dbConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(dbConnectionString))
            {
                SqlCommand command = new SqlCommand("AddEmployeeeee", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@name", name);
                command.Parameters.AddWithValue("@department_id", departmentId);
                command.Parameters.AddWithValue("@position_id", positionId);
                command.Parameters.AddWithValue("@salary", salary);

                
                    connection.Open();
                    command.ExecuteNonQuery();
                    BindGrid(); // Refresh the grid after adding the employee
                
            }
        }

        protected void DeleteEmployeeButton_Click(object sender, EventArgs e)
        {
            int employeeId = Convert.ToInt32(EmployeeIdTextBox.Text);

            string dbConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(dbConnectionString))
            {
                SqlCommand command = new SqlCommand("DeleteEmployee", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@employeeID", employeeId);

                connection.Open();
                command.ExecuteNonQuery();
            }
        }


        private void BindGrid()
        {
            string dbConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(dbConnectionString))
            {
                SqlCommand command = new SqlCommand("SELECT * FROM employees", connection);

                    connection.Open();
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();
                    dataAdapter.Fill(dataSet);

                    GridView1.DataSource = dataSet.Tables[0];
                    GridView1.DataBind();
                
 
            }
        }
    }
}
