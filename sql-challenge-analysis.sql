--1    List the employee number, last name, first name, sex, and salary of each employee.
--300,024
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM
	employees emp
		inner join
	salaries sal
		on emp.emp_no = sal.emp_no
		
--2    List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT emp.first_name, emp.last_name, emp.hire_date
FROM employees emp
WHERE date_part('year', hire_date) = 1986

--3 List the manager of each department along with their department number, department name, employee number, last name, and first name.
--SELECT dep.dept_name, dep.dept_no, emp.first_name manager_first_name, emp.last_name manager_last_name, emp.emp_no manager_emp_no
SELECT *
FROM
	departments dep
	inner join	
	dept_manager dm
		on dep.dept_no = dm.dept_no
		inner join	
	employees emp
		on dm.emp_no = emp.emp_no

--4    List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- This is not the same number of employees
--SELECT COUNT(*) from employees (300024)
SELECT dept.dept_no, dept.dept_name, emp.emp_no, emp.emp_no, emp.last_name, emp.first_name
FROM 
	departments dept
		inner join
	dept_emp de
		on dept.dept_no = de.dept_no
		inner join
	employees emp
		on de.emp_no = emp.emp_no
--5    List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT emp.first_name, emp.last_name, emp.sex
FROM employees emp
where first_name = 'Hercules' and last_name like 'B%'

--6    List each employee in the Sales department, including their 
--	employee number, last name, and first name.

SELECT emp.emp_no, last_name, first_name
from 
	departments dpt
		inner join
	dept_emp de
		on dpt.dept_no= de.dept_no
		inner join
	employees emp
		on de.emp_no = emp.emp_no
where dept_name = 'Sales'

--7    List each employee in the Sales and Development departments,
--	including their employee number, last name, first name, and department name.

SELECT emp.emp_no, last_name, first_name, dept_name
	from 
	departments dpt
		inner join
	dept_emp de
		on dpt.dept_no= de.dept_no
		inner join
	employees emp
		on de.emp_no = emp.emp_no
where dept_name in ('Sales', 'Development')


--8    List the frequency counts, in descending order, 
--	of all the employee last names (that is, how many employees share each last name).

SELECT last_name, count(*)
FROM employees
group by last_name
order by count(*) desc














