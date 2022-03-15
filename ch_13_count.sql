SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    COUNT(salary)
FROM
    salaries;
    
SELECT 
    COUNT(DISTINCT from_date)
FROM
    salaries;
    
SELECT 
    COUNT(*)
FROM
    salaries;

SELECT 
    *
FROM
    dept_emp
LIMIT 10;

SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;