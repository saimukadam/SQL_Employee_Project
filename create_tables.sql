USE warehouse;
-- Table 1 - Employees
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    department VARCHAR(50),
    city VARCHAR(50),
    joining_date DATE,
    salary DECIMAL(10,2),
    is_active BOOLEAN
);

-- Table 2 - Projects
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    department VARCHAR(50)
);

-- Table 3- Employee_Projects
CREATE TABLE Employee_Projects (
    id INT PRIMARY KEY,
    emp_id INT,
    project_id INT,
    hours_worked INT,
    FOREIGN KEY (emp_id) REFERENCES Employees(id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);