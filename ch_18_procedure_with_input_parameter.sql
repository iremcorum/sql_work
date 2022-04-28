USE employees;
DROP PROCEDURE IF EXISTS emp_salary;

DELIMITER $$
CREATE PROCEDURE emp_salary(IN p_emp_no INTEGER)
BEGIN
    SELECT
        e.first_name, e.last_name, s.salary, s.from_date, s.to_date
    FROM employees e
        JOIN salaries s ON e.emp_no = s.emp_no
    WHERE p_emp_no = e.emp_no;
END $$

DELIMITER ;

CALL employees.emp_salary(11300);

DROP PROCEDURE IF EXISTS emp_avg_salary;

DELIMITER $$
CREATE PROCEDURE emp_avg_salary(IN p_emp_no INTEGER)
BEGIN
    SELECT
        e.first_name, e.last_name, AVG(s.salary)
    FROM employees e
        JOIN salaries s ON e.emp_no = s.emp_no
    WHERE p_emp_no = e.emp_no;
END $$

DELIMITER ;

CALL employees.emp_avg_salary(11300);