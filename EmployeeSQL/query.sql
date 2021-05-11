--1.List emp number, last name, first name, sex, salary
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no
LIMIT 10

--2.list employees who were hired in 1986
SELECT
employees.last_name,
employees.first_name,
employees.hire_date
FROM employees
WHERE date_part('year', hire_date)= 1986
ORDER BY last_name
LIMIT 10

--3.list dep manager with dep no, dep name, emp no, 
--last name, first name
SELECT
dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees 
ON dept_manager.emp_no = employees.emp_no
ORDER BY emp_no

--4.list department with emp no, last name, first, dep name
SELECT
departments.dept_name,
employees.emp_no,
employees.last_name,
employees.first_name,
dept_employees.dept_no
FROM employees 
LEFT JOIN dept_employees ON employees.emp_no=dept_employees.emp_no
LEFT JOIN departments ON departments.dept_no=dept_employees.dept_no
ORDER BY dept_name, last_name

--5.first name, last name, sex for employees named "hercules b...."
SELECT
employees.first_name,
employees.last_name,
employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%'
ORDER BY first_name

--6.All sales employees including emp_no, last_name, first_name, department
SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
dept_employees.dept_no,
departments.dept_name
FROM employees
LEFT JOIN dept_employees
ON employees.emp_no= dept_employees.emp_no
LEFT JOIN departments
ON departments.dept_no= dept_employees.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY last_name

--7.same as 6 but with sales and development departments
SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
dept_employees.dept_no,
departments.dept_name
FROM employees
LEFT JOIN dept_employees
ON employees.emp_no= dept_employees.emp_no
LEFT JOIN departments
ON departments.dept_no= dept_employees.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY dept_name,last_name

--8. list count of last names in decending order
SELECT
last_name, COUNT(*) AS count
FROM employees
GROUP BY last_name
ORDER BY count DESC
