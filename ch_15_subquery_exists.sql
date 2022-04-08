SELECT
       e.first_name,
       e.last_name
FROM employees e
WHERE
      EXISTS( SELECT
                     *
      FROM dept_manager dm
      WHERE dm.emp_no = e.emp_no);

SELECT
       e.first_name,
       e.last_name
FROM employees e
WHERE
      EXISTS( SELECT
                     *
      FROM dept_manager dm
      WHERE dm.emp_no = e.emp_no
          ORDER BY emp_no);

SELECT
       e.first_name,
       e.last_name
FROM employees e
WHERE
      EXISTS( SELECT
                     *
      FROM dept_manager dm
      WHERE dm.emp_no = e.emp_no)
ORDER BY emp_no;

SELECT * FROM employees e
WHERE
      EXISTS( SELECT * FROM titles t
      WHERE e.emp_no = t.emp_no
        AND title = 'Assistant Engineer');