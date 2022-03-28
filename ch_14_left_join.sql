DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dup
WHERE dept_no = 'd009';

INSERT INTO dept_manager_dup
VALUES ('110228', 'd003', '1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES ('d009', 'Customer Service');

SELECT
       m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
    LEFT JOIN departments_dup d
        ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY dept_no;

SELECT
       d.dept_no, m.emp_no, d.dept_name
FROM departments_dup d
    LEFT JOIN dept_manager_dup m
        ON m.dept_no = d.dept_no
ORDER BY d.dept_no;

SELECT
       d.dept_no, m.emp_no, d.dept_name
FROM departments_dup d
    LEFT OUTER JOIN dept_manager_dup m
        ON m.dept_no = d.dept_no
ORDER BY d.dept_no;

SELECT
       m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
    LEFT JOIN departments_dup d
        ON m.dept_no = d.dept_no
WHERE dept_name IS NULL
ORDER BY d.dept_no;

SELECT
       e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date
FROM
     employees e
         LEFT JOIN
         dept_manager dm
ON dm.emp_no = e.emp_no
WHERE e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC;

SELECT
       e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date
FROM
     employees e
         LEFT JOIN
         dept_manager dm
ON dm.emp_no = e.emp_no
WHERE e.last_name = 'Markovitch'
ORDER BY e.emp_no DESC;