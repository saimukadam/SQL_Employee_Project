# SQL Mini Project: Employee & Project Analysis

## Project Overview
This is a mini SQL project designed for practice in Data Analytics. The project simulates a real-world scenario where employees are assigned to projects, and managers or analysts need to extract meaningful insights using SQL queries. 

The project demonstrates key SQL concepts such as:
- Creating tables (DDL)
- Inserting data (DML)
- Filtering and sorting data (SELECT, WHERE, ORDER BY)
- Aggregate functions (COUNT, SUM, AVG, MIN, MAX)
- Grouping data (GROUP BY, HAVING)
- Joining tables (INNER JOIN, LEFT JOIN)

---

## Database Structure

### Employees Table
| Column        | Data Type      | Description                     |
|---------------|----------------|---------------------------------|
| id            | INT (PK)       | Unique employee ID              |
| name          | VARCHAR(100)   | Employee name                   |
| age           | INT            | Employee age                    |
| department    | VARCHAR(50)    | Department name                 |
| city          | VARCHAR(50)    | City of employee                |
| joining_date  | DATE           | Date of joining                 |
| salary        | DECIMAL(10,2)  | Employee salary                 |
| is_active     | BOOLEAN        | Active employee status          |

### Projects Table
| Column        | Data Type      | Description                     |
|---------------|----------------|---------------------------------|
| project_id    | INT (PK)       | Unique project ID               |
| project_name  | VARCHAR(100)   | Name of the project             |
| start_date    | DATE           | Project start date              |
| end_date      | DATE           | Project end date                |
| department    | VARCHAR(50)    | Department handling the project |

### Employee_Projects Table
| Column        | Data Type      | Description                     |
|---------------|----------------|---------------------------------|
| id            | INT (PK)       | Unique record ID                |
| emp_id        | INT (FK)       | Employee ID                     |
| project_id    | INT (FK)       | Project ID                      |
| hours_worked  | INT            | Total hours worked on project   |

---

## Sample Queries
-- views
SELECT 
    *
FROM
    employees;
    
SELECT 
    *
FROM
    Projects;
    
SELECT 
    *
FROM
    Employee_Projects;

-- List all employees who are active and work in ‘Data Analytics’ department.
SELECT 
    *
FROM
    Employees
WHERE
    department = 'Data Analytics'
        AND is_active = TRUE;

-- Find the average salary department-wise.
SELECT 
    department, AVG(salary)
FROM
    employees
GROUP BY department; 

-- Show employees who joined after 2022 and earn more than 50,000.
SELECT 
    *
FROM
    Employees
WHERE
    joining_date > '2022-12-31'
        AND salary > 50000;

-- Count how many employees are from each city.
SELECT 
    city, COUNT(*) AS total_employees
FROM
    Employees
GROUP BY city;

-- Find top 3 employees who have worked maximum hours across projects.
SELECT 
    e.id, e.name, SUM(ep.hours_worked) AS total_hours
FROM
    Employees e
        JOIN
    Employee_Projects ep ON e.id = ep.emp_id
GROUP BY e.id , e.name
ORDER BY total_hours DESC
LIMIT 3;

-- List all employees who are working on more than 2 projects.
SELECT 
    e.id, e.name, COUNT(ep.project_id) AS total_projects
FROM
    Employees e
        JOIN
    Employee_Projects ep ON e.id = ep.emp_id
GROUP BY e.id , e.name
HAVING COUNT(ep.project_id) > 2;

-- Show department-wise highest salary employees.
SELECT 
    department, MAX(salary) AS highest_salary
FROM
    employees
GROUP BY department;

-- Find employees who are not assigned to any project.
SELECT 
    e.id, e.name
FROM
    Employees e
        LEFT JOIN
    Employee_Projects ep ON e.id = ep.emp_id
WHERE
    ep.project_id IS NULL;

-- Display total hours worked by each employee with their name and department.
SELECT 
    e.id,
    e.name,
    e.department,
    SUM(ep.hours_worked) AS total_hours
FROM
    Employees e
        JOIN
    Employee_Projects ep ON e.id = ep.emp_id
GROUP BY e.id , e.name , e.department;

-- Which project has the maximum employees assigned?
SELECT 
    p.project_name, COUNT(ep.emp_id) AS total_employees
FROM
    Projects p
        JOIN
    Employee_Projects ep ON p.project_id = ep.project_id
GROUP BY p.project_id , p.project_name
ORDER BY total_employees DESC
LIMIT 1;
--------------------------------------------------------
Author-:
Sai Mukadam
Final Year BCA Student | Aspiring Data Analyst
