select d.doctos_id,concat(d.first_name,' ',d.last_name)as name,p.dept_name from doctors d join department p on d.dept_id=p.dept_id group by doctos_id;
insert into doctors(first_name,last_name,gender,number,email,dept_id,specalization,hire_date) values('Anjali','Rao','Female','9876543219','anjali1@hospital.com',1,'General Medicine','2020-10-01');
select * from doctors;

select p.name,concat(d.first_name,' ',d.last_name) as name from patient p join appointment a on p.patient_id=a.patient_id join doctors d on d.doctos_id=a.doc_id;
