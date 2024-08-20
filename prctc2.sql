create database university;

use university;

create table student(
Roll_no int primary key,
Name varchar(50),
Marks int not null,
city varchar(25)

);

insert into student
(Roll_no, Name, Marks, City)
values
(1, "Affan", 449, "Miraj"),
(2, "Mayur", 444, "Ichalkaranji"),
(3, "Pranav", 447, "Miraj"),
(4, "Moin", 354, "Sangli"),
(5, "Tosif", 298, "Borgaon"),
(6, "Sahil", 400, "Pune");

select city,avg(marks) from student group by city order by avg(marks) desc; 

select city from student group by city;
select city,count(Roll_no) from student group by city having max(marks)>400;

set sql_safe_updates = 0;
update student set city = "Sangli" where city = "Miraj";
select * from student;

delete from student where marks < 400;

