SELECT
       m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
    INNER JOIN departments_dup d
        ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

# Old Join Syntax:
SELECT
       m.dept_no, m.emp_no, d.dept_name
FROM departments_dup d,
     dept_manager_dup m
WHERE
      m.dept_no = d.dept_no
ORDER BY m.dept_no;


SELECT
       e.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM employees e,
     dept_manager_dup m
WHERE e.emp_no = m.emp_no
ORDER BY m.emp_no;