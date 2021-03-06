DROP TABLE IF EXISTS employees_dup;
CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

INSERT INTO employees_dup
SELECT e.*
FROM employees e
LIMIT 20;

SELECT * FROM employees_dup;

INSERT INTO employees_dup VALUES
('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

SELECT * FROM employees_dup;

SELECT
       e.emp_no,
       e.first_name,
       e.last_name,
       NULL AS dept_no,
       NULL AS from_date
FROM employees_dup e
WHERE e.emp_no = 10001
UNION ALL SELECT
        NULL AS emp_no,
        NULL AS first_name,
        NULL AS last_name,
        m.dept_no,
        m.from_date
FROM dept_manager m;

SELECT
       e.emp_no,
       e.first_name,
       e.last_name,
       NULL AS dept_no,
       NULL AS from_date
FROM employees_dup e
WHERE e.emp_no = 10001
UNION SELECT
        NULL AS emp_no,
        NULL AS first_name,
        NULL AS last_name,
        m.dept_no,
        m.from_date
FROM dept_manager m;

SELECT
    *
FROM
    (SELECT
        e.emp_no,
        e.first_name,
        e.last_name,
        NULL AS dept_no,
        NULL AS from_date
    FROM
        employees e
    WHERE
        last_name = 'Denis'
    UNION SELECT
        NULL AS emp_no,
        NULL AS first_name,
        NULL AS last_name,
        dm.dept_no,
        dm.from_date
    FROM
        dept_manager dm) as a
ORDER BY -a.emp_no DESC;