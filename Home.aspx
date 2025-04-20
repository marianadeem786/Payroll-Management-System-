<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project_Application.Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="home.css">
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Dashboard: Employee Payroll System</h1>
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
        <div style="height: 800px;">
            <main>
                <div style="text-align: center;">
                    <h2>Welcome to the Employee Payroll Database</h2>
                    <br />
                    <h3>Group Members:-</h3>
                    <br />
                        <p>Waleed Bin Aamer</p>
                    <br />
                        <p>Shamikh Naqvi</p>
                    <br />
                        <p>Dia Ejaz</p>
                    <br />
                        <p>Maria Nadeem</p>
                </div>
            </main>
        </div>
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> Payroll System</p>
        </footer>
    </form>
</body>
</html>
