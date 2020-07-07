--List the following details of each employee: employee number, last name, first name, sex, and salary.

select i.emp_no, i.last_name, i.first_name, f.salary
from "Employee" i
join "Salary" f
on i.emp_no = f.emp_no;


--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from "Employee"
where hire_date >= '1986-01-1' and hire_date <= '1986-12-31';


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select i.dept_no, i.dept_name, f.emp_no, h.last_name, h.first_name
from "Departments" i
join "Department_Mgr" f
on i.dept_no = f.dept_no

join "Employee" h
on f.emp_no = h.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select i.emp_no, i.last_name, i.first_name, g.dept_name
from "Employee" i
join "Department_Employees" f
on i.emp_no = f.emp_no     

join "Departments" g
on g.dept_no = f.dept_no;


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from "Employee"
where first_name = 'Hercules' and last_name like 'B%';


--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select i.emp_no, i.last_name, i.first_name, f.dept_no, g.dept_name
from "Employee" i
join "Department_Employees" f
on i.emp_no = f.emp_no     

join "Departments" g
on g.dept_no = f.dept_no
where g.dept_no = 'd007';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select i.emp_no, i.last_name, i.first_name, f.dept_no, g.dept_name
from "Employee" i
join "Department_Employees" f
on i.emp_no = f.emp_no     

join "Departments" g
on g.dept_no = f.dept_no
where g.dept_no in ('d007', 'd005');

   
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT DISTINCT last_name, COUNT(last_name) AS "How many employees share their last name"
FROM "Employee"
GROUP BY last_name
order by "How many employees share their last name" desc;

