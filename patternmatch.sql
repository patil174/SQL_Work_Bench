use assignments;

CREATE TABLE Employees6 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Email VARCHAR(50)
);


INSERT INTO Employees6 (EmpID, Name, Department, Email)
VALUES
(1, 'Alice Johnson', 'HR', 'alice.johnson@example.com'),
(2, 'Bob Smith', 'IT', 'bob.smith@example.com'),
(3, 'Charlie Brown', 'Finance', 'charlie.brown@example.com'),
(4, 'Diana Prince', 'HR', 'diana.prince@example.com'),
(5, 'Eve Adams', 'IT', 'eve.adams@example.org');


-- List employees whose email addresses belong to the example.com domain.

select * from employees6 
where email like '%example.com%';

-- 	List all employees whose names start with the letter "A".

select * from employees6
where name like "A%";

--   	List employees whose names end with "son".

select * from employees6
where name like "%son";

-- 	Find employees whose names have "V" as the second letter.

select *
from employees6
where name like "_v%";

--   	List employees who work in departments that contain "IT" in their names.

select name,department
from employees6
where name like "%it%";

--   	Find employees whose department names include "hr" (case-insensitive) (hint:- first convert the department to lowercase and then do pattern matching).

select name, lower(department)
from employees6
where department='hr';

-- OR

SELECT *
FROM Employees6
WHERE LOWER(Department) LIKE '%hr%';
