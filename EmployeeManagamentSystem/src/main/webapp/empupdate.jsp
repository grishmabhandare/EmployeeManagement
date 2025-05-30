<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee | JavaTech</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #5ee7df, #b490ca);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .header {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            color: #fff;
        }

        .header img {
            width: 50px;
            margin-right: 15px;
        }

        .header h1 {
            font-size: 24px;
            font-weight: 600;
        }

        .form-container {
            background: #fff;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 550px;
            animation: fadeIn 0.8s ease;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: 500;
            color: #444;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            transition: border 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #5ee7df;
            outline: none;
        }

        .submit-btn {
            width: 100%;
            margin-top: 25px;
            padding: 12px;
            border: none;
            border-radius: 8px;
            background: linear-gradient(to right, #5ee7df, #b490ca);
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .submit-btn:hover {
            transform: scale(1.03);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .home-link {
            display: inline-block;
            margin-top: 20px;
            text-align: center;
            color: #fff;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .home-link:hover {
            color: #f0f8ff;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

    <div class="header">
        <img src="https://img.icons8.com/fluency/96/company.png" alt="JavaTech Logo">
        <h1>JavaTech</h1>
    </div>

    <div class="form-container">
        <h2>Update Employee</h2>
        <form action="updateEmployee" method="post">
            <label for="empno">Emp No (to update):</label>
            <input type="number" name="empno" id="empno" required>

            <label for="empName">Employee Name:</label>
            <input type="text" name="empName" id="empName" required>

            <label for="doj">Date of Joining:</label>
            <input type="date" name="doj" id="doj" required>

            <label for="gender">Gender:</label>
            <select name="gender" id="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>

            <label for="bsalary">Basic Salary:</label>
            <input type="number" step="0.01" name="bsalary" id="bsalary" required>

            <button type="submit" class="submit-btn">Update Employee</button>
        </form>
    </div>

    <a href="home.jsp" class="home-link">← Back to Home</a>

</body>
</html>
