-- Insert Records - Employees
INSERT INTO Employees (id, name, age, department, city, joining_date, salary, is_active) VALUES
(1, 'Rahul Sharma', 28, 'Data Analytics', 'Mumbai', '2022-05-15', 55000, TRUE),
(2, 'Priya Mehta', 32, 'HR', 'Pune', '2021-03-20', 48000, TRUE),
(3, 'Amit Verma', 29, 'Finance', 'Delhi', '2020-07-11', 60000, TRUE),
(4, 'Sneha Patil', 35, 'IT', 'Bangalore', '2019-01-05', 75000, TRUE),
(5, 'Vikram Singh', 27, 'Data Analytics', 'Chennai', '2023-02-10', 52000, TRUE),
(6, 'Neha Joshi', 30, 'Finance', 'Mumbai', '2021-11-25', 58000, TRUE),
(7, 'Arjun Nair', 40, 'IT', 'Hyderabad', '2018-09-13', 82000, TRUE),
(8, 'Kiran Kumar', 26, 'Data Analytics', 'Pune', '2023-06-01', 50000, TRUE),
(9, 'Rohit Desai', 34, 'HR', 'Delhi', '2020-12-19', 47000, FALSE),
(10, 'Anjali Gupta', 31, 'Finance', 'Mumbai', '2022-08-08', 61000, TRUE);

-- Insert Records - Projects
INSERT INTO Projects (project_id, project_name, start_date, end_date, department) VALUES
(101, 'Customer Segmentation', '2023-01-01', '2023-06-30', 'Data Analytics'),
(102, 'Employee Engagement', '2022-09-15', '2023-02-28', 'HR'),
(103, 'Financial Forecasting', '2021-04-01', '2022-03-31', 'Finance'),
(104, 'Cloud Migration', '2022-05-01', '2023-05-01', 'IT'),
(105, 'Sales Dashboard', '2023-03-01', '2023-12-31', 'Data Analytics');

-- Insert Records - Employee_Projects
INSERT INTO Employee_Projects (id, emp_id, project_id, hours_worked) VALUES
(1, 1, 101, 120),
(2, 1, 105, 90),
(3, 2, 102, 100),
(4, 3, 103, 150),
(5, 4, 104, 200),
(6, 5, 101, 80),
(7, 5, 105, 70),
(8, 6, 103, 120),
(9, 7, 104, 250),
(10, 8, 101, 60),
(11, 8, 105, 100),
(12, 9, 102, 40),
(13, 10, 103, 130),
(14, 10, 105, 95),
(15, 2, 101, 50);