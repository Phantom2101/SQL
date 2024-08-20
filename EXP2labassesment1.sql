create database exp1;

use exp1;

create table employee(
emp_id int  primary key,
emp_name char(20) ,
emp_add varchar(50),
emp_mob varchar(11),
dept_no int,
dept_name varchar(20),
job_id char(5),
salary float


);
insert into employee 
(emp_id, emp_name, emp_add, emp_mob, dept_no, dept_name, job_id, salary)
values
(1, "Affan", "Miraj", 9307231526, 0121,"Development",2121,190000 ),
(2, "Taha", "Pune", 9307231527, 0122, "Marketing", 2122, 145000),
(3, "Zara", "Sangli", 9307231528, 0123, "Finance", 2123, 155000),
(4, "Sara", "Mumbai", 9307231529, 0124, "Human Resources", 2124, 148000),
(5, "Omar", "Delhi", 9307231530, 0125, "Marketing", 2122, 140000),
(6, "Ayesha", "Raigad", 9307231531, 0126, "Development",2121, 160000),
(7, "Ali", "Belgaum", 9307231532, 0127, "Human Resources", 2124, 153000);

select * from employee;
set sql_safe_updates = 0;

update employee 
set salary = 196300
where salary = 190000;

update employee
set dept_no = 0122
where dept_name = "development";

update employee
set dept_no = 0128
where dept_name = "Marketing";

update employee
set dept_no = 0132
where dept_name = "Human Resources";

alter table employee
add column hiredate date;


UPDATE employee SET hiredate = '2021-01-15' WHERE emp_id = 1;
UPDATE employee SET hiredate = '2021-03-22' WHERE emp_id = 2;
UPDATE employee SET hiredate = '2021-05-10' WHERE emp_id = 3;
UPDATE employee SET hiredate = '2021-07-19' WHERE emp_id = 4;
UPDATE employee SET hiredate = '2021-09-30' WHERE emp_id = 5;
UPDATE employee SET hiredate = '2021-11-25' WHERE emp_id = 6;
UPDATE employee SET hiredate = '2021-12-05' WHERE emp_id = 7;

alter table employee
change column emp_id e_id int ;

select * from employee;

alter table employee
modify job_id varchar(10);

