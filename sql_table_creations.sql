create database first;
USE  ds;

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);


CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments (department_name, location)
VALUES
('HR', 'Bangalore'),
('IT', 'Mumbai'),
('Finance', 'Delhi');

INSERT INTO employees
(name, email, salary, hire_date, department_id)
VALUES
('John Doe', 'john@example.com', 55000.00, '2025-01-15', 1),
('Jane Smith', 'jane@example.com', 65000.00, '2025-02-20', 2),
('Alice Brown', 'alice@example.com', 70000.00, '2025-03-10', 3);


SELECT * FROM employees;
SELECT * FROM departments;

