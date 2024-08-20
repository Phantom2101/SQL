create database college;

use college;

create table student1(
roll_no int primary key,
name varchar(50),
marks int not null,
city varchar(20)
);

insert into student1
(Roll_no, Name,Marks,City)
values
(1, "Affan", 449, "Miraj"),
(2, "Mayur", 445, "Ichalkaranji"),
(3, "Pranav", 447, "Miraj");
insert into student1 values(4, "Sahil", 435, "Miraj");
insert into student1 values(5, "Moin", 400, "Sangli");

select * from student1;
select name,marks from student1;
select distinct city from student1;

select * from student1 where city="Miraj" and marks>440;
select * from student1 where marks+10>440;
select * from student1 where city="Miraj" or marks>440;

select * from student1 order by marks desc;

select  max(marks) from student1;
select  avg(marks) from student1;

select count(name) from student1;
select city,count(name) from student1 group by city;

set sql_safe_updates = 0;