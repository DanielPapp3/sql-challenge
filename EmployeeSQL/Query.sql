-- Data Analysis #1:
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no;

-- Data Analysis #2:
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986';

-- Data Analysis #3:
SELECT mgr.dept_no, d.dept_name, mgr.emp_no, e.first_name, e.last_name
FROM employees AS e
JOIN dept_manager AS mgr ON e.emp_no = mgr.emp_no
JOIN departments AS d ON d.dept_no = mgr.dept_no;

-- Data Analysis #4:
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no;

-- Data Analysis #5:
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Data Analysis #6:
SELECT de.emp_no, e.last_name, e.first_name FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

-- Data Analysis #7:
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- Data Analysis #8:
SELECT last_name, COUNT(last_name) AS Frequency FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;