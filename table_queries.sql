--1)
SELECT emp.emp_no
	, last_name
	, first_name
	, sex
	, salary
FROM employees emp JOIN salaries sal
	on emp.emp_no = sal.emp_no
	
--2)
SELECT first_name
	, last_name
	, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

--3)
SELECT dema.dept_no
    , dept_name
    , dema.emp_no
	, last_name
	, first_name
FROM employees emp JOIN dept_manager dema
	on emp.emp_no = dema.emp_no
	JOIN departments dept
	ON dema.dept_no = dept.dept_no
	
--4)
SELECT emp.emp_no
	, last_name
	, first_name
	, dept_name
FROM employees emp JOIN dept_emp dep
	ON emp.emp_no = dep.emp_no
	JOIN departments dept
	ON dept.dept_no = dep.dept_no
	
--5)
SELECT first_name
	, last_name
	, sex
FROM employees
WHERE first_name ='Hercules' AND last_name = 'B'

--6)
SELECT emp.emp_no
	,last_name
	, first_name
	, dept_name
FROM employees emp JOIN dept_emp dep
	ON emp.emp_no = dep.emp_no
	JOIN departments dept
	ON dept.dept_no = dep.dept_no
	WHERE dept_name = 'Sales'
	
--7)
SELECT emp.emp_no
	,last_name
	, first_name
	, dept_name
FROM employees emp JOIN dept_emp dep
	ON emp.emp_no = dep.emp_no
	JOIN departments dept
	ON dept.dept_no = dep.dept_no
	WHERE dept_name = 'Sales' AND dept_name = 'Development'
	
--8)
	SELECT 
	employees.last_name
	,COUNT(employees.last_name) AS frequency
	FROM employees
	GROUP BY employees.last_name
	ORDER BY frequency DESC
  
	

