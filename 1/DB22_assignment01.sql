

-- 1
SELECT COUNT(*) AS count_employees
FROM employees;

-- 2
SELECT last_name, employee_id
FROM employees
WHERE employee_id <= 200;

-- 3
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

-- 4
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 4;

-- 5
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 4
ORDER BY COUNT(*) DESC;

-- 6
SELECT SUM(salary) / COUNT(*) AS average_salary
FROM employees;

-- 7
SELECT last_name, salary AS salary
FROM employees
WHERE salary = (
  SELECT MIN(salary)
  FROM employees
);

-- 8-1
SELECT e.department_id, d.department_name, e.last_name
FROM employees e, departments d
WHERE e.department_id = d.department_id
ORDER BY e.department_id;

-- 8-2
SELECT e.department_id, d.department_name, e.last_name
FROM employees e
JOIN departments d
  ON e.department_id = d.department_id
ORDER BY e.department_id;

-- 9
SELECT e.department_id, d.department_name, e.last_name
FROM employees e
JOIN departments d
  ON e.department_id = d.department_id
WHERE e.department_id = 80
ORDER BY e.department_id;

-- 10
SELECT e.department_id, e.last_name
FROM employees e
LEFT JOIN departments d
  ON e.department_id = d.department_id
ORDER BY e.department_id;

-- 11
SELECT e1.last_name AS employee_name, e2.last_name AS manager_name
FROM employees e1
JOIN employees e2
  ON e1.manager_id = e2.employee_id;

-- 12
SELECT e.last_name, e.salary, j.grade_level
FROM employees e
JOIN job_grades j
  ON e.salary BETWEEN j.lowest_sal AND j.highest_sal;

-- END ---
