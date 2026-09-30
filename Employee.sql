use employee_schema;

# Drops the table Employee if it already exists.
drop table if exists Employee;  

create table Employee(
employee_id int PRIMARY KEY not null,
 emp_name varchar(15) not null,
 department varchar(50) not null,
 salary int not null
 );
 
# if we want to add anything like primary key, use
# ALTER TABLE TABLE_NAME add constraint primary key

insert into Employee values(100, "jk", "Data Science and Analytics", 50000);
insert into Employee values(101, "jeswin", "Data Science and Analytics", 40000);
insert into employee values(102, "abhijith", "Data Science and Analytics", 30000);

select * from Employee;

delete from employee where employee_id = 100; 
delete from employee where employee_id = 101;
delete from employee where employee_id = 102;  
select * from Employee;
 

insert into employee_schema.employee values (101, "Joy", "HR", 56000), (102, "Roy", "RESEEARCH", 80000), (103, "Sneha", "HR", 30000), (104, "Neha", "DEVELOPMENT", 75000);
select * from employee_schema.Employee;

select emp_name, department from employee;


# list all the employeeswhose salary>70000.
select * from employee_schema.employee where salary>70000;

# List the employees working in HR Department.
select * from employee_schema.employee where department = "HR";

# List all employee names who has "E" in their name.
select * from employee_schema.employee where emp_name like "%e%";

# List the employee details whose name contains "H" in the second last position.
select * from employee_schema.employee where emp_name like "%H_%";

# List the employee details whose name starts with "S".
select * from employee_schema.employee where emp_name like "S%";

# List the employee details whose name ends with "Y".
select * from employee_schema.employee where emp_name like "%Y";

select * from employee_schema.employee;

select * from employee_schema.employee where Department like "%A___";


# Update the salary of employee with employee id 103 to 35000.
update employee_schema.employee set salary = 35000 where employee_id = 103;
select * from employee_schema.employee;

# Add a new column experience to the existing table, it should be a not null constraint.
alter table employee_schema.employee add column experience int not null;
select * from employee_schema.employee;

# Update the experience column with values 5,7,3,6.
update employee_schema.employee set experience = 5 where employee_id = 101;
update employee_schema.employee set experience = 7 where employee_id = 102;
update employee_schema.employee set experience = 3 where employee_id = 103;
update employee_schema.employee set experience = 6 where employee_id = 104;
select * from employee_schema.employee;

# Delete the employee 104.
delete from employee_schema.employee where employee_id = 104;
select * from employee_schema.employee;



