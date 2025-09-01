<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Prescription</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 6px 15px rgba(0,0,0,0.2);
            width: 400px;
            animation: fadeIn 0.8s ease-in-out;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            display: block;
            margin: 10px 0 5px;
            color: #444;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 15px;
            transition: border-color 0.3s;
        }
        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #007BFF;
            outline: none;
        }
        .btn {
            width: 100%;
            padding: 12px;
            background: #007BFF;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }
        .btn:hover {
            background: #0056b3;
        }
        .links {
            text-align: center;
            margin-top: 15px;
        }
        .links a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }
        .links a:hover {
            text-decoration: underline;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add Prescription</h2>
        <form action="savePrescription.jsp" method="post">
            <label>Patient ID:</label>
            <input type="number" name="patient_id" required>

            <label>Patient Name:</label>
            <input type="text" name="patient_name" required>

            <label>Medicine:</label>
            <input type="text" name="medicine" required>

            <label>Dosage:</label>
            <input type="text" name="dosage" required>

            <label>Days:</label>
            <input type="number" name="days" required>

            <label>Frequency:</label>
            <input type="text" name="frequency" required>

            <button type="submit" class="btn">💊 Save Prescription</button>
        </form>
        <div class="links">
            <a href="viewPrescription.jsp">📋 View All Prescriptions</a>
        </div>
    </div>
</body>
</html>

