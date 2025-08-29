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

