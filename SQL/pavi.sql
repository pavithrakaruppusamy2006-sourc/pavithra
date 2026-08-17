CREATE DATABASE MEDICARE;
USE MADICARE;
CREATE TABLE Hospitals (
hospital_id VARCHAR(6) NOT NULL,
hospital_name VARCHAR(100) NOT NULL,
hospital_type VARCHAR(40) NOT NULL,
city VARCHAR(50) NOT NULL,
state VARCHAR(50) NOT NULL,
region VARCHAR(20) NOT NULL,
bed_capacity INT NOT NULL,
established_year INT NOT NULL,
contact_number VARCHAR(20),
email VARCHAR(100),
CONSTRAINT pk_hospitals PRIMARY KEY (hospital_id));

CREATE TABLE Departments (
    department_id VARCHAR(6) NOT NULL,
    department_name VARCHAR(80) NOT NULL,
    hospital_id VARCHAR(6) NOT NULL,
    floor_number VARCHAR(7),
    head_doctor_id VARCHAR(6),
	CONSTRAINT pk_departments PRIMARY KEY (department_id));
    
    CREATE TABLE Doctors(
	doctor_id VARCHAR(7)NOT NULL,
    first_name	VARCHAR(50)NOT NULL,
    last_name	VARCHAR(50)NOT NULL,
    gender	VARCHAR(10)NOT NULL,
    specialization	VARCHAR(50)NOT NULL,
    department_id	VARCHAR(7)NOT NULL,
    hospital_id	VARCHAR(7)NOT NULL,
    qualification	VARCHAR(50)NOT NULL,
    experience_years	YEAR,
    consultation_fee	DECIMAL,
    phone_number	VARCHAR(20)NOT NULL,
    email	VARCHAR(50)NOT NULL,
    joining_date DATE,
    CONSTRAINT pk_doctor PRIMARY KEY(doctor_id));
    
    CREATE TABLE Patients(
    patient_id	VARCHAR(7)NOT NULL,
    first_name	VARCHAR(30)NOT NULL,
    last_name	VARCHAR(30)NOT NULL,
    gender	VARCHAR(10)NOT NULL,
    date_of_birth DATE,	
    age	INT(2),
    city VARCHAR(20)NOT NULL,
    state VARCHAR(20)NOT NULL,
    phone_number VARCHAR(20)NOT NULL,
    email	VARCHAR(100)NOT NULL,
    blood_group	VARCHAR(5)NOT NULL,
    registration_date DATE,
    CONSTRAINT pk_patients PRIMARY KEY(patient_id));
    
    CREATE TABLE Rooms(
    room_id	VARCHAR(7)NOT NULL,
    hospital_id	VARCHAR(7)NOT NULL,
    room_number	INT(2),
    room_type VARCHAR(20)NOT NULL,
    floor_number VARCHAR(7),
    daily_charge DECIMAL,
    room_status VARCHAR(10)NOT NULL,
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
    admission_id VARCHAR(7)NOT NULL,
    patient_id	VARCHAR(7)NOT NULL,
    hospital_id	 VARCHAR(7)NOT NULL,
    department_id	VARCHAR(7)NOT NULL,
    admitting_doctor_id	VARCHAR(7)NOT NULL,
    room_id	VARCHAR(7)NOT NULL,
    admission_date	DATE,
    discharge_date	DATE,
    admission_type	VARCHAR(30)NOT NULL,
    admission_status VARCHAR(50)NOT NULL,
    CONSTRAINT pk_admissions PRIMARY KEY(admission_id));
    
    CREATE TABLE Treatments(
    treatment_id VARCHAR(7)NOT NULL,	
    admission_id VARCHAR(7),
    patient_id VARCHAR(7)NOT NULL,	
    doctor_id VARCHAR(7)NOT NULL,	
    treatment_name VARCHAR(50)NOT NULL,
    treatment_date	DATE,
    treatment_cost	DECIMAL,
    treatment_status VARCHAR(30)NOT NULL,
    CONSTRAINT pk_treatments PRIMARY KEY (treatment_id));
    
    CREATE TABLE Insurance(
    insurance_id VARCHAR(7)NOT NULL,
	patient_id VARCHAR(7)NOT NULL,
	insurance_provider VARCHAR(50),
	policy_number VARCHAR(10)NOT NULL,
	coverage_amount DECIMAL,
	policy_start_date DATE,
	policy_end_date DATE,
	claim_status VARCHAR(30)NOT NULL,
    CONSTRAINT pk_insurance PRIMARY KEY (insurance_id));
    
    CREATE TABLE Medicines(
    medicine_id VARCHAR(7)NOT NULL,
	medicine_name VARCHAR(40)NOT NULL,
	category VARCHAR(30)NOT NULL,
	manufacturer VARCHAR(50)NOT NULL,
	unit_price DECIMAL,
	stock_quantity INT(4),
    CONSTRAINT pk_medicines PRIMARY KEY(medicine_id));

    CREATE TABLE Pharmacy(
    pharmacy_sale_id VARCHAR(7)NOT NULL,
    patient_id VARCHAR(7)NOT NULL,
	medicine_id VARCHAR(7)NOT NULL,
	hospital_id	VARCHAR(7)NOT NULL,
    quantity INT(2) NOT NULL,
	sale_date DATE,
	total_price DECIMAL,
    CONSTRAINT pk_pharmacy PRIMARY KEY(pharmacy_sale_id));
    
    CREATE TABLE Laboratory(
    lab_test_id VARCHAR(7)NOT NULL,
	patient_id VARCHAR(7)NOT NULL,
	doctor_id VARCHAR(7)NOT NULL,
	hospital_id VARCHAR(7)NOT NULL,
	test_name VARCHAR(40)NOT NULL,
	test_date DATE,
	test_result VARCHAR(20)NOT NULL,
	test_cost DECIMAL,
	test_status VARCHAR(20)NOT NULL,
    CONSTRAINT 	pk_laboratory PRIMARY KEY(lab_test_id));
    
    CREATE TABLE Employees(
    employee_id VARCHAR(7)NOT NULL,
	first_name VARCHAR(40)NOT NULL,
	last_name VARCHAR(40)NOT NULL,
	gender VARCHAR(10)NOT NULL,
	hospital_id VARCHAR(7)NOT NULL,
	department_id VARCHAR(7)NOT NULL,
	designation VARCHAR(40)NOT NULL,
	employment_type VARCHAR(30)NOT NULL,
	salary DECIMAL,
	joining_date DATE,
	phone_number VARCHAR(20)NOT NULL,
	email VARCHAR(50)NOT NULL,
    CONSTRAINT pk_employee PRIMARY KEY (employee_id));
    
    CREATE TABLE Bill(
    bill_id VARCHAR(7)NOT NULL,
	patient_id VARCHAR(7)NOT NULL,
	admission_id VARCHAR(7),
	appointment_id VARCHAR(7),
	bill_date DATE,
	room_charges DECIMAL,
    doctor_charges DECIMAL,
	medicine_charges DECIMAL,
	lab_charges DECIMAL,
	other_charges	DECIMAL,
    total_amount DECIMAL,
    bill_status VARCHAR(20)NOT NULL,
    CONSTRAINT pk_bill PRIMARY KEY(	bill_id));
    
    CREATE TABLE Payments(
    payment_id VARCHAR(7)NOT NULL,
	bill_id VARCHAR(7)NOT NULL,
	patient_id VARCHAR(7)NOT NULL,
	payment_date DATE,
	payment_amount DECIMAL,
	payment_mode VARCHAR(7),
	payment_status VARCHAR(7)NOT NULL,
    CONSTRAINT pk_payment PRIMARY KEY (payment_id));
    


    


    
    




    
    

    
    


