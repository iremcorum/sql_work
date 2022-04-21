USE employees;

# We will create a routine that will return the first 1000 rows from the 'employees' table.
DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
   SELECT * FROM employees
   LIMIT 1000;
END $$

DELIMITER ;

# If we want to call this procedure, we need to use following syntax:
# CALL database_name.procedure_name();

CALL employees.select_employees();

CALL select_employees();

DELIMITER $$
CREATE PROCEDURE average_salary()
BEGIN
    SELECT AVG(salary) FROM salaries;
END $$

DELIMITER ;

CALL employees.average_salary();