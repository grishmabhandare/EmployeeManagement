<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Employees | JavaTech</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #83a4d4, #b6fbff);
            padding: 30px;
            color: #333;
        }

        .header {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
        }

        .header img {
            width: 50px;
            margin-right: 12px;
        }

        .header h1 {
            font-size: 24px;
            font-weight: 600;
            color: white;
        }

        .container {
            background: #fff;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 8px 18px rgba(0, 0, 0, 0.1);
            max-width: 1000px;
            margin: auto;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2c3e50;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border-radius: 8px;
            overflow: hidden;
        }

        table th, table td {
            padding: 12px 15px;
            text-align: center;
        }

        table th {
            background: #2980b9;
            color: white;
        }

        table tr:nth-child(even) {
            background-color: #f3f9fd;
        }

        table tr:nth-child(odd) {
            background-color: #ffffff;
        }

        .no-data {
            text-align: center;
            font-weight: 500;
            color: #e74c3c;
        }

        .back-link {
            display: inline-block;
            margin-top: 25px;
            text-align: center;
            text-decoration: none;
            color: #2980b9;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .back-link:hover {
            text-decoration: underline;
            color: #1c5980;
        }
    </style>
</head>
<body>

    <div class="header">
        <img src="https://img.icons8.com/fluency/96/company.png" alt="JavaTech Logo">
        <h1>JavaTech</h1>
    </div>

    <div class="container">
        <h2>Employee Report</h2>

        <%
            List<Employee> employees = (List<Employee>) request.getAttribute("employees");
            if (employees != null && !employees.isEmpty()) {
        %>
            <table>
                <tr>
                    <th>Emp No</th>
                    <th>Name</th>
                    <th>Date of Joining</th>
                    <th>Gender</th>
                    <th>Basic Salary</th>
                </tr>
                <%
                    for (Employee emp : employees) {
                %>
                <tr>
                    <td><%= emp.getEmpno() %></td>
                    <td><%= emp.getEmpName() %></td>
                    <td><%= emp.getDoJ() %></td>
                    <td><%= emp.getGender() %></td>
                    <td>₹<%= emp.getBsalary() %></td>
                </tr>
                <% } %>
            </table>
        <%
            } else {
        %>
            <p class="no-data">No employees found.</p>
        <%
            }
        %>

        <div style="text-align:center;">
            <a href="home.jsp" class="back-link">← Back to Home</a>
        </div>
    </div>

</body>
</html>
