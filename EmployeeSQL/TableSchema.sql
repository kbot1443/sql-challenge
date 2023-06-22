DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;

-- Create the employees table
CREATE TABLE employees (
  emp_no int NOT NULL,
  emp_title_id varchar(10) NOT NULL,
  birth_date date NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  sex varchar(1) NOT NULL,
  hire_date date NOT NULL,
  PRIMARY KEY (emp_no)
);

-- Create the titles table
CREATE TABLE titles (
  title_id varchar(10) NOT NULL,
  title varchar(50) NOT NULL,
  PRIMARY KEY (title_id)
);

-- Create the salaries table
CREATE TABLE salaries (
  emp_no int NOT NULL,
  salary int NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create the departments table
CREATE TABLE departments (
  dept_no varchar(10) NOT NULL,
  dept_name varchar(50) NOT NULL,
  PRIMARY KEY (dept_no)
);

-- Create the dept_emp table
CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no varchar(10) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
