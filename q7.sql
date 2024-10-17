create database MYDb;

use MYDb;

create table employee(emp_no int,job varchar(255),emp_name varchar(255),dep_no int,salary float)

alter table employee

add primary key(emp_no);
INSERT INTO employee (emp_no, job, emp_name, dep_no, salary) VALUES
(1, 'Alice', 'Developer', 101, 60000),
(2, 'Bob', 'Manager', 102, 75000),
(3, 'Charlie', 'ASP', 103, 70000),
(4, 'David', 'Developer', 101, 65000),
(5, 'Eve', 'ASP', 103, 72000);
select * from employee;

create view employee_view as select emp_no, job, emp_name, dep_no, salary from employee;


select * from employee_view;
#vertical partition
create view employee_view2 as select emp_no, job, emp_name, dep_no from employee;
#hrizontal  partition
 update employee_view set department_no=104 where employee_no=4;
";




