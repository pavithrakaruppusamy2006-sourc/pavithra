DROP DATABASE IF EXISTS MEDICARE_HOSPITALS;
CREATE DATABASE MEDICARE_HOSPITALS;
USE MEDICARE_HOSPITALS;
CREATE TABLE Hospitals (
hospital_id VARCHAR(6),
hospital_name VARCHAR(100),
hospital_type VARCHAR(40),
city VARCHAR(50),
state VARCHAR(50),
region VARCHAR(20),
bed_capacity VARCHAR(10),
established_year VARCHAR(20),
contact_number VARCHAR(20),
email VARCHAR(100),
CONSTRAINT pk_hospitals PRIMARY KEY (hospital_id));

CREATE TABLE Departments (
    department_id VARCHAR(6),
    department_name VARCHAR(80),
    hospital_id VARCHAR(6),
    floor_number VARCHAR(7),
    head_doctor_id VARCHAR(6),
	CONSTRAINT pk_departments PRIMARY KEY (department_id));
    
    CREATE TABLE Doctors(
	doctor_id VARCHAR(7),
    first_name	VARCHAR(50),
    last_name	VARCHAR(50),
    gender	VARCHAR(10),
    specialization	VARCHAR(50),
    department_id	VARCHAR(7),
    hospital_id	VARCHAR(7),
    qualification	VARCHAR(50),
    experience_year VARCHAR(10),
    consultation_fee VARCHAR(10),
    phone_number	VARCHAR(20),
    email	VARCHAR(50),
    joining_date VARCHAR(20),
    CONSTRAINT pk_doctor PRIMARY KEY(doctor_id));
    
    CREATE TABLE Patients(
    patient_id	VARCHAR(7),
    first_name	VARCHAR(30),
    last_name	VARCHAR(30),
    gender	VARCHAR(10),
    date_of_birth VARCHAR(20),	
    age	VARCHAR(10),
    city VARCHAR(20),
    state VARCHAR(20),
    phone_number VARCHAR(20),
    email	VARCHAR(100),
    blood_group	VARCHAR(5),
    registration_date VARCHAR(20),
    CONSTRAINT pk_patients PRIMARY KEY(patient_id));
    
    CREATE TABLE Rooms(
    room_id	VARCHAR(7),
    hospital_id	VARCHAR(7),
    room_number	VARCHAR(10),
    room_type VARCHAR(20),
    floor_number VARCHAR(7),
    daily_charge VARCHAR(10),
    room_status VARCHAR(10),
    CONSTRAINT pk_rooms PRIMARY KEY(room_id));
    
    CREATE TABLE Appointments(
    appointment_id	VARCHAR(7)NOT NULL,
    patient_id	VARCHAR(7)NOT NULL,
    doctor_id	VARCHAR(7)NOT NULL,
    hospital_id	VARCHAR(7)NOT NULL,
    appointment_date DATE,
    appointment_time TIME,
    status	VARCHAR(10)NOT NULL,
    reason_for_visit	VARCHAR(30)NOT NULL,
    created_at DATETIME,
    CONSTRAINT pk_appointments PRIMARY KEY (appointment_id));
    
    CREATE TABLE Admissions(
    admission_id VARCHAR(7),
    patient_id	VARCHAR(7),
    hospital_id	 VARCHAR(7),
    department_id	VARCHAR(7),
    admitting_doctor_id	VARCHAR(7),
    room_id	VARCHAR(7),
    admission_date	VARCHAR(20),
    discharge_date	VARCHAR(20),
    admission_type	VARCHAR(30),
    admission_status VARCHAR(50),
    CONSTRAINT pk_admissions PRIMARY KEY(admission_id));
    
    CREATE TABLE Treatments(
    treatment_id VARCHAR(7),	
    admission_id VARCHAR(7),
    patient_id VARCHAR(7),	
    doctor_id VARCHAR(7),	
    treatment_name VARCHAR(50),
    treatment_date	VARCHAR(20),
    treatment_cost	VARCHAR(20),
    treatment_status VARCHAR(30),
    CONSTRAINT pk_treatments PRIMARY KEY (treatment_id));
    
    CREATE TABLE Insurance(
    insurance_id VARCHAR(7),
	patient_id VARCHAR(7),
	insurance_provider VARCHAR(50),
	policy_number VARCHAR(10),
	coverage_amount VARCHAR(20),
	policy_start_date VARCHAR(20),
	policy_end_date VARCHAR(20),
	claim_status VARCHAR(30),
    CONSTRAINT pk_insurance PRIMARY KEY (insurance_id));
    
    CREATE TABLE Medicines(
    medicine_id VARCHAR(7),
	medicine_name VARCHAR(40),
	category VARCHAR(30),
	manufacturer VARCHAR(50),
	unit_price VARCHAR(20),
	stock_quantity VARCHAR(20),
    CONSTRAINT pk_medicines PRIMARY KEY(medicine_id));

    CREATE TABLE Pharmacy(
    pharmacy_sale_id VARCHAR(7),
    patient_id VARCHAR(7),
	medicine_id VARCHAR(7),
	hospital_id	VARCHAR(7),
    quantity VARCHAR(20),
	sale_date VARCHAR(20),
	total_price VARCHAR(20),
    CONSTRAINT pk_pharmacy PRIMARY KEY(pharmacy_sale_id));
    
    CREATE TABLE Laboratory(
    lab_test_id VARCHAR(7),
	patient_id VARCHAR(7),
	doctor_id VARCHAR(7),
	hospital_id VARCHAR(7),
	test_name VARCHAR(40),
	test_date VARCHAR(20),
	test_result VARCHAR(20),
	test_cost VARCHAR(20),
	test_status VARCHAR(20),
    CONSTRAINT 	pk_laboratory PRIMARY KEY(lab_test_id));
    
    CREATE TABLE Employees(
    employee_id VARCHAR(7),
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	gender VARCHAR(10),
	hospital_id VARCHAR(7),
	department_id VARCHAR(7),
	designation VARCHAR(40),
	employment_type VARCHAR(30),
	salary VARCHAR(20),
	joining_date VARCHAR(20),
	phone_number VARCHAR(20),
	email VARCHAR(50),
    CONSTRAINT pk_employee PRIMARY KEY (employee_id));
    
    CREATE TABLE Bill(
    bill_id VARCHAR(7),
	patient_id VARCHAR(7),
	admission_id VARCHAR(7),
	appointment_id VARCHAR(7),
	bill_date VARCHAR(20),
	room_charges VARCHAR(20),
    doctor_charges VARCHAR(20),
	medicine_charges VARCHAR(20),
	lab_charges VARCHAR(20),
	other_charges	VARCHAR(20),
    total_amount VARCHAR(20),
    bill_status VARCHAR(20),
    CONSTRAINT pk_bill PRIMARY KEY(	bill_id));
    
    CREATE TABLE Payments(
    payment_id VARCHAR(7) ,
	bill_id VARCHAR(7),
	patient_id VARCHAR(7),
	payment_date VARCHAR(20),
	payment_amount VARCHAR(20),
	payment_mode VARCHAR(7),
	payment_status VARCHAR(7),
    CONSTRAINT pk_payment PRIMARY KEY (payment_id));
    
