# Prescription-management-system
The Prescription Management System is a simple web application built using JSP, Servlets, and MySQL. It allows doctors or administrators to add, view, and manage patient prescriptions in a structured way.
# 💊 Prescription Management System

A simple web application built using **JSP, MySQL, and Apache Tomcat** to manage patient prescriptions.  
Users can add new prescriptions and view/search existing records.

---

## 🚀 Features
- Add new prescription with:
  - Patient ID
  - Patient Name
  - Medicine
  - Dosage
  - Duration (days)
  - Frequency
- View all prescriptions in a searchable table
- Search by **Patient ID, Name, or Medicine**
- Simple and clean **CSS styled interface**

---

## 🛠️ Tech Stack
- **Frontend:** JSP, HTML, CSS
- **Backend:** Java (JSP/Servlets)
- **Database:** MySQL
- **Server:** Apache Tomcat
- **IDE (optional):** Eclipse

---

## 📂 Project Structure
Prescription-Management-System/
│── src/ # Java classes (optional if using Servlet)
│
│── WebContent/
│ ├── index.jsp # Prescription form
│ ├── savePrescription.jsp # Insert data into DB
│ ├── viewPrescription.jsp # Display prescriptions
│ ├── style.css # Styling (optional)
│
│── db.sql # Database schema + sample data
│── README.md # Project documentation
│── .gitignore # Ignore build files

sql-code
## 🗄️ Database Setup
1. Open MySQL and run the following:
```sql
CREATE DATABASE prescriptiondb1;
USE prescriptiondb1;

CREATE TABLE prescriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    patient_name VARCHAR(100) NOT NULL,
    medicine VARCHAR(100) NOT NULL,
    dosage VARCHAR(50) NOT NULL,
    days INT NOT NULL,
    frequency VARCHAR(50) NOT NULL
);

-- Insert a sample record
INSERT INTO prescriptions (patient_id, patient_name, medicine, dosage, days, frequency)
VALUES (101, 'John Doe', 'Paracetamol', '500mg', 5, 'Twice a day');
▶️ How to Run
Clone this repository:

bash
Copy code
git clone https://github.com/your-username/Prescription-Management-System.git
Import the project into Eclipse (Dynamic Web Project).

Configure Tomcat server in Eclipse.

Update MySQL username & password inside your JSP files:

java
Copy code
Connection conn = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/prescriptiondb1",
    "root",
    "your_password"
);
Deploy the project on Tomcat.

Open browser:

Add Prescription → http://localhost:8080/Prescription-Management-System/index.jsp

View Prescriptions → http://localhost:8080/Prescription-Management-System/viewPrescription.jsp


📌 Future Improvements
Update & Delete prescription records

User authentication (Doctor/Pharmacist login)

Better UI with Bootstrap or React frontend
