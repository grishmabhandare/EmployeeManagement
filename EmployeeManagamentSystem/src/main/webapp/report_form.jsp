<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Report | JavaTech</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #84fab0, #8fd3f4);
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
            background: white;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            max-width: 550px;
            width: 100%;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        fieldset {
            border: none;
        }

        label {
            font-weight: 500;
            display: block;
            margin-bottom: 6px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #ccc;
            margin-bottom: 20px;
            font-size: 14px;
        }

        input[type="checkbox"] {
            transform: scale(1.2);
            margin-right: 8px;
        }

        button {
            background: linear-gradient(to right, #36d1dc, #5b86e5);
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.3s ease, transform 0.2s;
        }

        button:hover {
            background: linear-gradient(to right, #5b86e5, #36d1dc);
            transform: scale(1.05);
            box-shadow: 0 4px 14px rgba(0,0,0,0.15);
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
        <h2>Generate Employee Report</h2>
        <form action="reportFilter" method="post">
            <fieldset>
                <label>Start Name With:</label>
                <input type="text" name="startsWith" maxlength="1" placeholder="e.g., A" />

                <label>Years of Service (≥):</label>
                <input type="number" name="minYears" min="0" placeholder="e.g., 5" />

                <label>Minimum Salary (>):</label>
                <input type="number" name="minSalary" min="0" step="0.01" placeholder="e.g., 30000" />

                <label>
                    <input type="checkbox" name="showAll" value="true" />
                    Show All Employees
                </label>

                <button type="submit">Generate Report</button>
            </fieldset>
        </form>
    </div>

    <a href="home.jsp" class="back-link">← Back to Home</a>

</body>
</html>
