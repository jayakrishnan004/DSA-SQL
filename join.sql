use company_schema;

select * from employees;
select * from departments;

# Q. project all the records with employee name and department names.
select e.emp_name, d.dept_name from employees e JOIN departments d on e.dept_id = d.dept_id;

# Q. Display the employee name and department name for employees who belong to a department.
select e.emp_name, d.dept_name from employees e inner join departments d on e.dept_id = d.dept_id;

# Q. Display all employees along with their department names. Employees without a department should als be displayed.
select e.emp_name, d.dept_name from employees e LEFT JOIN departments d on e.dept_id = d.dept_id;

# Q. Display all departments and employees provided department with no employees should also appear.
select e.emp_name, d.dept_name from employees e RIGHT JOIN departments d on e.dept_id = d.dept_id;

# cross join
select e.emp_name, d.dept_name from employees e cross JOIN departments d;


# GROUP BY
# Q. Find the number of employees in each department.
select dept_id, count(*) as employee_count from employees group by dept_id;


# Display each department names and number of employees in each department.
select d.dept_name, count(*) as employee_count from employees e right join departments d on e.dept_id = d.dept_id group by d.dept_id;

# Find the total salary paid by each department.
select d.dept_name, sum(salary) as sum from employees e right join departments d on e.dept_id = d.dept_id group by d.dept_id;

# Find the average salary of employees in each department.
select d.dept_name, avg(salary) as average from employees e right join departments d on e.dept_id = d.dept_id group by d.dept_id;

# Find the highest salary of employees in each department.
select d.dept_name, max(salary) as maximum from employees e right join departments d on e.dept_id = d.dept_id group by d.dept_id;

# Find the lowest salary of employees in each department.
select d.dept_name, min(salary) as lowest from employees e right join departments d on e.dept_id = d.dept_id group by d.dept_id;
