SELECT
       *
FROM dept_manager;

SELECT
       e.first_name, e.last_name
FROM
    employees e
WHERE
      e.emp_no IN (SELECT
                          dm.emp_no
      FROM
           dept_manager dm);

SELECT * FROM dept_manager
WHERE emp_no IN (SELECT emp_no FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1995-01-01');