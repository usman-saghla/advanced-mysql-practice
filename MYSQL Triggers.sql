USE employees;

CREATE TRIGGER trig_hire_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
IF Latest.hire_date > date_format(sysdate(), '%Y-%m-%d') THEN
SET Latest.hire_date  = date_format(sysdate(), '%Y-%m-%d')
END
$$ DELIMITER 

INSERT employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');
SELECT
*
FROM
employees
ORDER BY emp_no DESC;