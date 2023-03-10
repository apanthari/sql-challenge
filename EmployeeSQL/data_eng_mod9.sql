DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments (
    dept_no VARCHAR(5) NOT NULL,
    dept_name VARCHAR(20), 
    PRIMARY KEY (dept_no)
);

select *
from departments

CREATE TABLE dept_emp (
    emp_no VARCHAR(10) NOT NULL,
    dept_no VARCHAR(5) NOT NULL, 
    PRIMARY KEY (emp_no, dept_no)
);

select *
from dept_emp

CREATE TABLE dept_manager (
    dept_no VARCHAR(5),
    emp_no VARCHAR(10) NOT NULL, 
    PRIMARY KEY (emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select *
from dept_manager

CREATE TABLE titles (
    title_id VARCHAR(10) NOT NULL,
    title VARCHAR(20), 
    PRIMARY KEY (title_id)
);

select *
from titles

-- why is forgein not working? 
CREATE TABLE employees (
    emp_no VARCHAR(10) NOT NULL,
    emp_title VARCHAR(20),
	birth_date DATE, 
	first_name VARCHAR(20), 
	last_name VARCHAR(20), 
	sex VARCHAR, 
	hire_date DATE, 
    PRIMARY KEY (emp_no) 
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

select *
from employees

CREATE TABLE salaries (
    emp_no VARCHAR(10) NOT NULL,
    salary INT(10), 
    PRIMARY KEY (emp_no)
);

select *
from salaries
