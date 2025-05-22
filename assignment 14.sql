use assignments;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DepartmentID INT
);


INSERT INTO Employees (EmpID, EmpName, DepartmentID)
VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'Diana', NULL),
(5, 'Eve', 101);


CREATE TABLE Departments10 (
    DepartmentID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);


INSERT INTO Departments10 (DepartmentID, DeptName, Location)
VALUES
(101, 'HR', 'New York'),
(102, 'IT', 'San Francisco'),
(103, 'Finance', 'Chicago'),
(104, 'Sales', 'Boston');


select * from employees;
select * from departments10;

-- Retrieve all employees along with their department names, but only for those who have a department assigned 

SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees E
JOIN Departments10 D ON E.DepartmentID = D.DepartmentID
WHERE E.DepartmentID IS NOT NULL;

 -- Retrieve all employees and their department names. If an employee does not belong to a department, show NULL for the department name.

select E.EMPID, E.EMPNAME, D.DEPTNAME
FROM EMPLOYEES E
JOIN DEPARTMENTS10 D ON E.DEPARTMENTID = D.DEPARTMENTID;

--  Retrieve all departments and their employees. If a department has no employees, show NULL for the employee name.

SELECT D.DepartmentID, D.DeptName, E.EmpName
FROM Departments10 D
LEFT JOIN Employees E ON D.DepartmentID = E.DepartmentID;

--  Retrieve all employees and departments, including those without matching records.

SELECT E.EmpID, E.EmpName, D.DepartmentID, D.DeptName
FROM Employees E
LEFT JOIN Departments10 D ON E.DepartmentID = D.DepartmentID
UNION
SELECT E.EmpID, E.EmpName, D.DepartmentID, D.DeptName
FROM Employees E
RIGHT JOIN Departments10 D ON E.DepartmentID = D.DepartmentID;

-- Create a combination of all employees and departments.

SELECT E.EmpID, E.EmpName, D.DepartmentID, D.DeptName
FROM Employees E
CROSS JOIN Departments10 D;

--  Create a combined list of all employee names and department names.

SELECT E.EMPNAME, D.DEPTNAME
FROM EMPLOYEES E
JOIN DEPARTMENTS10 D
ON E.DEPARTMENTID = D.DEPARTMENTID;

--  Find the department IDs that exist in both Employees and Departments (use INTERSECT command).
-- in mysql intersection command does not work

SELECT E.DepartmentID
FROM Employees E
INNER JOIN Departments10 D ON E.DepartmentID = D.DepartmentID;

-- Find the department IDs that exist in Departments but not in Employees.

SELECT D.DepartmentID
FROM Departments10 D
LEFT JOIN Employees E ON D.DepartmentID = E.DepartmentID
WHERE E.DepartmentID IS NULL;





