SELECT dept_name
FROM employee_details
GROUP BY dept_id, dept_name
HAVING SUM(salary) > 25;
