SELECT 
    SUM(salary)
FROM
    salaries;

SELECT 
    SUM(*)
FROM
    salaries;
    
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';