<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="Project_Application.Employees" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employees</title>
    <link rel="stylesheet" href="department.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Employees</h1>
            <nav>
                <ul>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Employees">Employees</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Departments">Departments</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Positions">Positions</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Attendance">Attendance</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Allowances">Allowances</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Deductions">Deductions</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Payroll">Payroll</a></li>
                </ul> 
            </nav>
        </header>
        <main style="height: 800px;">
            <div class="department-list">
                <h2>Add Employee</h2>
                <asp:TextBox ID="NameTextBox" runat="server" placeholder="Name"></asp:TextBox>
                <asp:TextBox ID="DepartmentIdTextBox" runat="server" placeholder="Department ID"></asp:TextBox>
                <asp:TextBox ID="PositionIdTextBox" runat="server" placeholder="Position ID"></asp:TextBox>
                <asp:TextBox ID="SalaryTextBox" runat="server" placeholder="Salary"></asp:TextBox>
                <asp:Button ID="AddEmployeeButton" runat="server" Text="Add Employee" OnClick="AddEmployeeButton_Click" />
                
                <br />
                <br />

                <h2>Delete Employee</h2>
                <asp:TextBox ID="EmployeeIdTextBox" runat="server" placeholder="Employee ID"></asp:TextBox>
                <asp:Button ID="DeleteEmployeeButton" runat="server" Text="Delete Employee" OnClick="DeleteEmployeeButton_Click" />
                
                <br />
                <br />

                <asp:GridView ID="GridView1" AutoGenerateColumns="true" runat="server">
                    
                </asp:GridView>
            </div>
        </main>
    </form>
</body>
</html>
