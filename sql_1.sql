INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

SELECT salary
FROM employee_table
ORDER BY salary DESC
LIMIT 1 OFFSET 2;