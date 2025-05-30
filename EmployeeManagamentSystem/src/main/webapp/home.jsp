<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JavaTech | Employee Management</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #667eea, #764ba2);
            min-height: 100vh;
            padding: 40px;
            color: #fff;
        }

        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 40px;
        }

        .logo-section {
            display: flex;
            align-items: center;
        }

        .logo-section img {
            width: 50px;
            margin-right: 15px;
        }

        .company-name {
            font-size: 28px;
            font-weight: 600;
        }

        .logout-btn {
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            background-color: #ff6b6b;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #e85050;
        }

        h1 {
            font-size: 32px;
            margin-bottom: 30px;
            text-align: center;
        }

        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 25px;
            max-width: 1000px;
            margin: auto;
        }

        .card {
            background: white;
            color: #333;
            border-radius: 12px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0,0,0,0.3);
        }
        .card a {
            text-decoration: none;
            color: #333;
            font-weight: 600;
        }

        @media (max-width: 600px) {
            .header {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
            }
            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <div class="logo-section">
            <img src="https://img.icons8.com/fluency/96/company.png" alt="JavaTech Logo">
            <div class="company-name">JavaTech</div>
        </div>
        <button class="logout-btn" onclick="logout()">Logout</button>
    </div>

    <h1>Welcome to JavaTech Employee Management System</h1>

    <div class="card-grid">
        <div class="card"><a href="empadd.jsp">➕ Add Employee</a></div>
        <div class="card"><a href="empupdate.jsp">✏️ Update Employee</a></div>
        <div class="card"><a href="empdelete.jsp">🗑️ Delete Employee</a></div>
        <div class="card"><a href="report">📋 Display All Employees</a></div>
        <div class="card" id="last"><a href="report_form.jsp">Generate Reports</a></div>
    </div>

    <script>
        function logout() {
            // For now, just redirect to login. Session handling can be added later.
            window.location.href = "index.jsp";
        }
    </script>

</body>
</html>
