--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.
--m0001 = manager
select * from employees;
select * from titles;
select * from departments;
select * from dept_emp;

select e.emp_no,e.emp_title_id, e.last_name, e.first_name, d.dept_no, s.dept_name
from employees e
join dept_emp d on e.emp_no = d.emp_no
join departments s on d.dept_no = s.dept_no
where e.emp_title_id = 'm0001'
;