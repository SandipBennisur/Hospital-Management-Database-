create database hospital;
use hospital;
create table department(dept_it int primary key auto_increment,dept_name varchar(20),location varchar(20));
create table doctors(doctos_id int primary key auto_increment,first_name varchar(20),last_name varchar(20),gender varchar(20)
,number varchar(10) not null,email varchar(40) unique,dept_id int,specalization varchar(20),hire_date varchar(20),foreign key(dept_id) references department(dept_id));

create table patient(patient_id int primary key auto_increment,name varchar(20),dob date ,blood_group varchar(20),address varchar(20),phone_number varchar(10),email varchar(30) unique);
create table appointment(appointment_id int primary key auto_increment,doc_id int,patient_id int ,appointment_date date,appointment_time time,status varchar(20),reason varchar(50));
alter table appointment add constraint fk_doc_id 
foreign key(doc_id) references doctors(doctos_id),add constraint fk_patient_id 
foreign key(patient_id) references patient(patient_id );
create  table admission(admission_id int primary key auto_increment,patient_id int ,admission_date date,discharge_date datetime,diagosis varchar(20));
create table billing(billing_id int primary key auto_increment,patient_id int,admission_id int,amount decimal(10,2),payment_status varchar(20),bill_date date,payment_method varchar(20));
alter table billing add constraint fk_patient_billing
foreign key(patient_id) references patient(patient_id);


