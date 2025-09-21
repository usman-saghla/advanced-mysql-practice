USE employees;

ALTER TABLE employees
DROP INDEX i_hire_date;

SELECT 
    *
FROM
    salaries
WHERE
    salary > 89000; 

CREATE INDEX i_salary ON salaries(salary); 

SELECT 
    *
FROM
    salaries
WHERE
    salary > 89000;

SELECT 
    *
FROM
    salaries
WHERE
    salary > 89000
ORDER BY salary
LIMIT 100;
