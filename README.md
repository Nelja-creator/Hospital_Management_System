# Hospital Management System

A desktop-based application built with **Java Swing** and **MySQL** to streamline hospital operations, including patient registration, doctor scheduling, and billing management.

## 🚀 Features
- **Role-Based Access Control**: Different dashboards for Admins, Doctors, and Receptionists.
- **Dynamic Dashboard**: A multi-panel interface using `CardLayout` for seamless navigation.
- **Database Integration**: Secure login and data persistence using JDBC.
- **Modular Panels**: Dedicated sections for Patients, Doctors, Appointments, and Bills.

## 🛠️ Tech Stack
- **Language**: Java (JDK 8 or higher)
- **Framework**: Java Swing (GUI)
- **Build Tool**: Maven
- **Database**: MySQL

## 📋 Setup Instructions

### 1. Database Setup
1. Open your MySQL editor (e.g., MySQL Workbench).
2. Run the script located in `/sql/setup.sql` to create the database and tables.
3. Ensure the `roles` table is populated so that the `users` foreign key functions correctly.

### 2. Project Configuration
1. Open the project in **NetBeans** or any Java IDE.
2. Navigate to `src/main/java/com/mycompany/hospital_management_system/DatabaseConnection.java`.
3. Update the `url`, `username`, and `password` strings to match your local MySQL credentials.
4. Note: The URL should include `?zeroDateTimeBehavior=CONVERT_TO_NULL` to prevent date-handling errors.

### 3. Build and Run
1. Right-click the project and select **Clean and Build** to download the MySQL Connector J dependency via Maven.
2. Run `LoginFrame.java` to start the application.

Look out for an updated version where a framework is added.

## 🔒 Security Note
Passwords in this repository are placeholders. Always use environment variables or encrypted property files for production-level security.
