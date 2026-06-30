-- ==========================
-- Department (10 Records)
-- ==========================
INSERT INTO department (dept_name, location) VALUES
('General Medicine','Block A'),
('Cardiology','Block B'),
('Orthopedics','Block C'),
('Pediatrics','Block A'),
('Gynecology','Block D'),
('Neurology','Block B'),
('Dermatology','Block C'),
('Radiology','Block D'),
('Pathology','Block E'),
('Emergency','Ground Floor');

-- ==========================
-- Doctors (10 Records)
-- ==========================
-- Doctors
INSERT INTO doctors
(first_name,last_name,gender,number,email,dept_id,specalization,hire_date)
VALUES
('Amit','Shah','Male','9876543210','amit@hospital.com',1,'Physician','2018-05-10'),
('Neha','Patel','Female','9876543211','neha@hospital.com',2,'Cardiologist','2019-07-12'),
('Rahul','Mehta','Male','9876543212','rahul@hospital.com',3,'Orthopedic','2020-01-15'),
('Priya','Joshi','Female','9876543213','priya@hospital.com',4,'Pediatrician','2017-03-22'),
('Karan','Desai','Male','9876543214','karan@hospital.com',5,'Gynecologist','2021-08-05'),
('Riya','Sharma','Female','9876543215','riya@hospital.com',6,'Neurologist','2016-09-18'),
('Arjun','Singh','Male','9876543216','arjun@hospital.com',7,'Dermatologist','2022-02-11'),
('Sneha','Verma','Female','9876543217','sneha@hospital.com',8,'Radiologist','2019-11-25'),
('Vivek','Kumar','Male','9876543218','vivek@hospital.com',9,'Pathologist','2018-06-30'),
('Anjali','Rao','Female','9876543219','anjali@hospital.com',10,'Emergency Physician','2020-10-01');
-- Patient
INSERT INTO patient
(name,dob,blood_group,address,phone_number,email)
VALUES
('Rohan Patel','1998-04-10','O+','Ahmedabad','9123456780','rohan@gmail.com'),
('Aisha Khan','1995-07-21','A+','Surat','9123456781','aisha@gmail.com'),
('Mohan Sharma','1988-01-15','B+','Rajkot','9123456782','mohan@gmail.com'),
('Pooja Mehta','2000-12-11','AB+','Vadodara','9123456783','pooja@gmail.com'),
('Raj Joshi','1992-09-18','O-','Jamnagar','9123456784','raj@gmail.com'),
('Nisha Desai','1997-02-28','A-','Bhavnagar','9123456785','nisha@gmail.com'),
('Suresh Kumar','1985-11-05','B-','Junagadh','9123456786','suresh@gmail.com'),
('Kavya Shah','2001-06-16','AB-','Gandhinagar','9123456787','kavya@gmail.com'),
('Deepak Singh','1994-03-27','O+','Morbi','9123456788','deepak@gmail.com'),
('Meera Patel','1999-08-09','A+','Bhuj','9123456789','meera@gmail.com');

-- Appointment
INSERT INTO appointment
(doc_id,patient_id,appointment_date,appointment_time,status,reason)
VALUES
(1,1,'2026-06-01','09:00:00','Completed','Fever'),
(2,2,'2026-06-02','10:30:00','Completed','Chest Pain'),
(3,3,'2026-06-03','11:00:00','Pending','Knee Pain'),
(4,4,'2026-06-04','09:30:00','Completed','Child Checkup'),
(5,5,'2026-06-05','13:00:00','Cancelled','Pregnancy Check'),
(6,6,'2026-06-06','14:00:00','Completed','Headache'),
(7,7,'2026-06-07','15:30:00','Completed','Skin Allergy'),
(8,8,'2026-06-08','10:00:00','Pending','X-Ray'),
(9,9,'2026-06-09','11:30:00','Completed','Blood Test Review'),
(10,10,'2026-06-10','12:30:00','Completed','Accident Injury');

-- Admission
INSERT INTO admission
(patient_id,admission_date,discharge_date,diagosis)
VALUES
(1,'2026-06-01','2026-06-05 10:00:00','Viral Fever'),
(2,'2026-06-02','2026-06-06 11:00:00','Heart Disease'),
(3,'2026-06-03','2026-06-07 09:30:00','Leg Fracture'),
(4,'2026-06-04','2026-06-05 08:45:00','High Fever'),
(5,'2026-06-05','2026-06-09 15:00:00','Pregnancy Care'),
(6,'2026-06-06','2026-06-08 12:30:00','Migraine'),
(7,'2026-06-07','2026-06-10 14:15:00','Skin Infection'),
(8,'2026-06-08','2026-06-11 10:30:00','Bone Injury'),
(9,'2026-06-09','2026-06-12 09:00:00','Diabetes'),
(10,'2026-06-10','2026-06-15 16:00:00','Accident Trauma');
-- Billing
INSERT INTO billing
(patient_id,admission_id,amount,payment_status,bill_date,payment_method)
VALUES
(1,1,5000.00,'Paid','2026-06-05','Cash'),
(2,2,25000.00,'Paid','2026-06-06','Card'),
(3,3,18000.00,'Pending','2026-06-07','UPI'),
(4,4,4500.00,'Paid','2026-06-05','Cash'),
(5,5,30000.00,'Pending','2026-06-09','Card'),
(6,6,7000.00,'Paid','2026-06-08','UPI'),
(7,7,6500.00,'Paid','2026-06-10','Cash'),
(8,8,12000.00,'Pending','2026-06-11','Card'),
(9,9,9000.00,'Paid','2026-06-12','UPI'),
(10,10,45000.00,'Pending','2026-06-15','Card');