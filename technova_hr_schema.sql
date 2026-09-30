use technova_hr_schema;

create table technova_hr_schema.employees(employee_id int primary key, employee_name varchar(50) not null, email varchar(100) unique, department varchar(30), joining_date date, salary decimal(10.2));

create table technova_hr_schema.leave_requests(leave_id int primary key, employee_id int, constraint fk foreign key (employee_id) references employees(employee_id) , leave_type varchar(20), start_date date, end_date date, status varchar(20));

insert into technova_hr_schema.employees values(101, "Anu Thomas", "anu@technova.com", "IT", "2023-06-12", 45000);
insert into technova_hr_schema.employees values(102, "Rahul Nair", "rahul@technova.com", "HR", "2022-08-20", 52000);
insert into technova_hr_schema.employees values(103, "Meera Joseph", "meera@technova.com", "IT", "2024-01-15", 48000);
insert into technova_hr_schema.employees values(104, "Arun Kumar", "arun@technova.com", "FINANCE", "2021-11-10", 60000);
insert into technova_hr_schema.employees values(105, "Diya Menon", "diya@technova.com", "IT", "2023-03-18", 55000);
insert into technova_hr_schema.employees values(106, "Vishnu Raj", "vishnu@technova.com", "HR", "2024-07-01", 42000);

insert into technova_hr_schema.leave_requests values(1, 101, "Casual", "2026-10-05", "2026-10-06", "Pending");
insert into technova_hr_schema.leave_requests values(2, 103, "Sick", "2026-10-01", "2026-10-02", "Approved");
insert into technova_hr_schema.leave_requests values(3, 105, "Casual", "2026-10-10", "2026-10-12", "Pending");
insert into technova_hr_schema.leave_requests values(4, 102, "Earned", "2026-10-15", "2026-10-16", "Approved");
insert into technova_hr_schema.leave_requests values(5, 106, "Sick", "2026-10-03", "2026-10-03", "Pending");

select * from technova_hr_schema.employees;
select * from technova_hr_schema.leave_requests;

# Increase Meera Joseph salary from the existing value to ₹55,000.
update technova_hr_schema.employees set salary = 550000 where employee_id = 103;
select * from technova_hr_schema.employees;

# Employee 106, Vishnu Raj, has moved from HR to IT.
update employees set department = "IT" where employee_id = 106;
select * from technova_hr_schema.employees;

# Leave request 1 has been approved.
update leave_requests set status = "Approved" where leave_id = 1;

# Leave request 5 has been cancelled.
update leave_requests set status = "Cancelled" where leave_id = 5;

alter table employees add column phone_number varchar(15);

alter table employees add column employment_status varchar(20);
update employees set employment_status = "Active";
set sql_safe_updates = 0;
select * from employees;

update employees set email = "vishnu.raj@technova.com" where employee_id = 106;
select * from employees;