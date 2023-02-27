DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments (
    dept_no VARCHAR,
    dept_name VARCHAR, 
    PRIMARY KEY (dept_no)
);
select *
from departments

CREATE TABLE dept_emp (
    emp_no VARCHAR,
    dept_no VARCHAR, 
    PRIMARY KEY (emp_no, dept_no)
);

select *
from dept_emp

CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no VARCHAR, 
    PRIMARY KEY (emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select *
from dept_manager

CREATE TABLE titles (
    title_id VARCHAR,
    title VARCHAR, 
    PRIMARY KEY (title_id)
);
select *
from titles

-- why is forgein not working? 
CREATE TABLE employees (
    emp_no VARCHAR,
    emp_title VARCHAR,
	birth_date DATE, 
	first_name VARCHAR, 
	last_name VARCHAR, 
	sex VARCHAR, 
	hire_date DATE, 
    PRIMARY KEY (emp_no) 
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);
select *
from employees

CREATE TABLE salaries (
    emp_no VARCHAR,
    salary INT, 
    PRIMARY KEY (emp_no)
);

select *
from salaries








