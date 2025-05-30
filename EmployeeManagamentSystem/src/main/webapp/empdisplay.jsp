<%@ page import="com.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Employee | JavaTech</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #b2fefa, #0ed2f7);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 30px;
            color: #333;
        }

        .header {
            display: flex;
            align-items: center;
            color: white;
            margin-bottom: 30px;
        }

        .header img {
            width: 50px;
            margin-right: 10px;
        }

        .header h1 {
            font-size: 24px;
            font-weight: 600;
        }

        .form-container {
            background: #fff;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 18px rgba(0,0,0,0.2);
            max-width: 550px;
            width: 100%;
            margin-bottom: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            font-weight: 500;
            margin-bottom: 8px;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 10px;
            margin-bottom: 15px;
            font-size: 14px;
        }

        input[type="submit"] {
            background: linear-gradient(to right, #0ed2f7, #b2fefa);
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: bold;
            transition: transform 0.2s ease;
        }

        input[type="submit"]:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 14px rgba(0,0,0,0.2);
        }

        .message {
            margin-top: 10px;
            padding: 12px;
            border-left: 5px solid #f39c12;
            background-color: #fef9e7;
            font-weight: bold;
        }

        table {
            margin-top: 20px;
            width: 100%;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            border-radius: 12px;
            overflow: hidden;
        }

        table, th, td {
            border: 1px solid #eee;
        }

        td {
            padding: 12px 18px;
            font-size: 14px;
        }

        tr:nth-child(even) {
            background: #f9f9f9;
        }

        .back-link {
            margin-top: 20px;
            text-decoration: none;
            color: white;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .back-link:hover {
            color: #fefefe;
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="header">
        <img src="https://img.icons8.com/fluency/96/company.png" alt="JavaTech Logo">
        <h1>JavaTech</h1>
    </div>

    <div class="form-container">
        <h2>Display Employee</h2>
        <form method="post" action="displayEmployee">
            <label>Enter Employee Number (Empno):</label>
            <input type="text" name="empno" required />
            <input type="submit" value="Display" />
        </form>

        <%
            Employee emp = (Employee) request.getAttribute("employee");
            String message = (String) request.getAttribute("message");

            if (message != null) {
        %>
            <div class="message"><%= message %></div>
        <%
            }

            if (emp != null) {
        %>
            <h3>Employee Details:</h3>
            <table>
                <tr><td><strong>Emp No</strong></td><td><%= emp.getEmpno() %></td></tr>
                <tr><td><strong>Name</strong></td><td><%= emp.getEmpName() %></td></tr>
                <tr><td><strong>Date of Joining</strong></td><td><%= emp.getDoJ() %></td></tr>
                <tr><td><strong>Gender</strong></td><td><%= emp.getGender() %></td></tr>
                <tr><td><strong>Basic Salary</strong></td><td><%= emp.getBsalary() %></td></tr>
            </table>
        <%
            }
        %>
    </div>

    <a href="home.jsp" class="back-link">← Back to Home</a>

</body>
</html>
