<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payroll.aspx.cs" Inherits="Project_Application.Payroll" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payroll</title>
    <link rel="stylesheet" href="department.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Payroll</h1>
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
                <h2>Payroll Details</h2>
                <!-- Display payroll details here -->
                                <asp:GridView ID="GridView1" AutoGenerateColumns="true" runat="server">
    
</asp:GridView>
            </div>
        </main>
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> Payroll System</p>
        </footer>
    </form>
</body>
</html>
