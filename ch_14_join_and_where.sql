SELECT
       e.emp_no, e.first_name, e.last_name, s.salary
FROM employees e
    JOIN salaries s ON e.emp_no = s.emp_no
WHERE s.salary > 145000;

set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

SELECT
       e.first_name, e.last_name, e.hire_date, t.title
FROM employees e
    JOIN titles t ON e.emp_no = t.emp_no
WHERE e.first_name = 'Margareta' AND last_name = 'Markovitch';