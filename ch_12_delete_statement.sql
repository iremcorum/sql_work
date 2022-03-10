USE employees;

COMMIT;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
DELETE FROM employees 
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
ROLLBACK;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

DELETE FROM departments_dup;

ROLLBACK;

DELETE FROM departments 
WHERE
    dept_no = 'd010';