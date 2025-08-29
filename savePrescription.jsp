<%@ page import="java.sql.*" %>
<%
	int patientId = Integer.parseInt(request.getParameter("patient_id"));
    String patientName = request.getParameter("patient_name");
    String medicine = request.getParameter("medicine");
    String dosage = request.getParameter("dosage");
    int days = Integer.parseInt(request.getParameter("days"));
    String frequency = request.getParameter("frequency");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/prescriptiondb1", "root", "Abishek@123");

        PreparedStatement ps = conn.prepareStatement(
        	    "INSERT INTO prescriptions(patient_id, patient_name, medicine, dosage, days, frequency) VALUES (?, ?, ?, ?, ?, ?)"
        	);
        	ps.setInt(1, patientId);
        	ps.setString(2, patientName);
        	ps.setString(3, medicine);
        	ps.setString(4, dosage);
        	ps.setInt(5, days);
        	ps.setString(6, frequency);


        ps.executeUpdate();
        conn.close();

        out.println("<h3>Prescription Saved Successfully </h3>");
        out.println("<a href='index.jsp'>Add Another</a> | <a href='viewPrescription.jsp'>View All</a>");
    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
