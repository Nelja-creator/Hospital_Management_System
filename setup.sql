/*After  properly installing my sql and opening the workbench and a new query */
create database hospital_db;
use hospital_db;

/*role table*/
CREATE TABLE roles ( 
role_id INT PRIMARY KEY AUTO_INCREMENT, 
role_name VARCHAR(50) NOT NULL 
);
INSERT INTO roles (role_id, role_name) VALUES (1, 'Admin');
INSERT INTO roles (role_id, role_name) VALUES (2, 'Doctor');
INSERT INTO roles (role_id, role_name) VALUES (3, 'Receptionist');

/*user authentication connected to roles*/
CREATE TABLE users ( 
user_id INT PRIMARY KEY AUTO_INCREMENT, 
username VARCHAR(50) UNIQUE NOT NULL, 
password VARCHAR(255) NOT NULL, 
role_id INT, 
FOREIGN KEY (role_id) REFERENCES roles(role_id) );

/*adding users to test user frame*/
INSERT INTO users(username,password,role_id)VALUES('admin','admin123',1);
SELECT *FROM users;

/*patients table*/
CREATE TABLE patients ( 
patient_id INT PRIMARY KEY AUTO_INCREMENT, 
first_name VARCHAR(50), 
last_name VARCHAR(50), 
dob DATE, 
gender VARCHAR(10), 
address TEXT, 
phone VARCHAR(20), 
email VARCHAR(100) 
); 

/*table for doctors*/
CREATE TABLE doctors ( 
doctor_id INT PRIMARY KEY AUTO_INCREMENT, 
user_id INT, 
specialization VARCHAR(100), 
FOREIGN KEY (user_id) REFERENCES users(user_id) 
); 

/*tbale for appointments*/
CREATE TABLE appointments ( 
appointment_id INT PRIMARY KEY AUTO_INCREMENT, 
patient_id INT, 
doctor_id INT, 
appointment_date DATE, 
appointment_time TIME, 
status VARCHAR(20), 
FOREIGN KEY (patient_id) REFERENCES patients(patient_id), 
FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) 
); 

/*medical records*/
CREATE TABLE medical_records ( 
record_id INT PRIMARY KEY AUTO_INCREMENT, 
patient_id INT, 
doctor_id INT, 
diagnosis TEXT, 
treatment TEXT, 
record_date DATE, 
FOREIGN KEY (patient_id) REFERENCES patients(patient_id), 
FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) 
);

/*prescriptions table*/
CREATE TABLE prescriptions ( 
prescription_id INT PRIMARY KEY AUTO_INCREMENT, 
record_id INT, 
medicine_name VARCHAR(100), 
dosage VARCHAR(50), 
duration VARCHAR(50), 
FOREIGN KEY (record_id) REFERENCES medical_records(record_id) 
); 

/*bills table*/
CREATE TABLE bills ( 
bill_id INT PRIMARY KEY AUTO_INCREMENT, 
patient_id INT, 
total_amount DECIMAL(10,2), 
payment_status VARCHAR(20), 
bill_date DATE, 
FOREIGN KEY (patient_id) REFERENCES patients(patient_id) 
); 
