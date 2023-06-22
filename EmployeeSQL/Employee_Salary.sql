select * 
from employees;
select *
from salaries;

select e.emp_no, e.last_name, e.first_name, e.sex, MAX(s.salary) as salary
FROM employees e
JOIN salaries s on e.emp_no = s.emp_no
GROUP BY e.emp_no, e.last_name, e.first_name, e.sex;

SELECT emp_no, COUNT(*)
FROM salaries
GROUP BY emp_no
HAVING COUNT(*) > 1;
