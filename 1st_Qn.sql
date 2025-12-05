CREATE TABLE employee_details (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary INT
);

INSERT INTO employee_details (emp_id, emp_name, dept_name, salary) VALUES
(801, 'Sai', 'HR', 30000),
(802, 'Priya', 'HR', 32000),

(803, 'Charan', 'IT', 40000),
(804, 'Reddy', 'IT', 42000),
(805, 'Kiran', 'IT', 41000),

(806, 'Uday', 'Sales', 45000),
(807, 'Chenna', 'Sales', 47000),
(808, 'Sam', 'Sales', 46000),
(809, 'Nithesh', 'Sales', 48000);

SELECT dept_name
FROM employee_details
GROUP BY dept_name
HAVING COUNT(*) > (
    SELECT COUNT(*)
    FROM employee_details
    WHERE dept_name = 'HR'
);
