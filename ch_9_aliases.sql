SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name;

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name;

SELECT 
    salary > 80000, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
GROUP BY salary
ORDER BY salary ASC;