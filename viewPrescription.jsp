<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Prescriptions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        .search-box {
            text-align: center;
            margin-bottom: 20px;
        }
        .search-box input {
            padding: 10px;
            width: 300px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
        }
        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 6px 15px rgba(0,0,0,0.1);
            border-radius: 12px;
            overflow: hidden;
            animation: fadeIn 0.8s ease-in-out;
        }
        th, td {
            padding: 12px 15px;
            text-align: center;
        }
        th {
            background: #007BFF;
            color: #fff;
            text-transform: uppercase;
            font-size: 14px;
        }
        tr:nth-child(even) {
            background: #f9f9f9;
        }
        tr:hover {
            background: #f1f1f1;
        }
        td {
            color: #333;
        }
        .links {
            text-align: center;
            margin-top: 20px;
        }
        .links a {
            text-decoration: none;
            color: #007BFF;
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
    <script>
        function searchTable() {
            let input = document.getElementById("searchInput").value.toLowerCase();
            let rows = document.querySelectorAll("#prescriptionTable tbody tr");

            rows.forEach(row => {
                let text = row.textContent.toLowerCase();
                row.style.display = text.includes(input) ? "" : "none";
            });
        }
    </script>
</head>
<body>
    <h2>Prescription Records</h2>

    <div class="search-box">
        <input type="text" id="searchInput" onkeyup="searchTable()" placeholder=" Search by Patient ID, Name, or Medicine...">
    </div>

    <table id="prescriptionTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Patient ID</th>
                <th>Patient Name</th>
                <th>Medicine</th>
                <th>Dosage</th>
                <th>Days</th>
                <th>Frequency</th>
            </tr>
        </thead>
        <tbody>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/prescriptiondb1", "root", "Abishek@123");

                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM prescriptions");

                while(rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getInt("patient_id") %></td>
                <td><%= rs.getString("patient_name") %></td>
                <td><%= rs.getString("medicine") %></td>
                <td><%= rs.getString("dosage") %></td>
                <td><%= rs.getInt("days") %></td>
                <td><%= rs.getString("frequency") %></td>
            </tr>
        <%
                }
                conn.close();
            } catch(Exception e) {
                out.println("Error: " + e.getMessage());
            }
        %>
        </tbody>
    </table>

    <div class="links">
        <a href="index.jsp"> Add New Prescription</a>
    </div>
</body>
</html>
