use assignments;

CREATE TABLE Employees5 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DateOfBirth DATE,
    JoinDate DATE
);


INSERT INTO Employees5 (EmpID, Name, DateOfBirth, JoinDate)
VALUES
(1, 'Alice Johnson', '1985-05-20', '2010-06-15'),
(2, 'Bob Smith', '1990-08-10', '2015-09-01'),
(3, 'Charlie Brown', '1988-03-25', '2012-11-12'),
(4, 'Diana Prince', '1992-01-30', '2017-07-08'),
(5, 'Eve Adams', '1987-12-05', '2013-03-20');

-- Display the current date and time.

select current_timestamp() as currentdatetime;

select now() as currentdatetime;

-- Calculate the age of each employee based on their date of birth.

SELECT Name, 
       DateOfBirth, 
       TIMESTAMPDIFF(YEAR, DateOfBirth, CURDATE()) AS Age
FROM Employees5;

-- 	Calculate the total years of experience for each employee based on their join date.

select name,
       joindate,
       timestampdiff(year,joindate,curdate()) as total_years_of_exp
from employees5;     

-- Extract the year, month, and day from each employee's date of birth.

select name,
       year(dateofbirth) as birthyear,
       month(dateofbirth) as birthmonth,
       day(dateofbirth) as birthday
from employees5;    


-- List all employees born in the month of August.

select * 
from employees5
where month(dateofbirth) = 8;   

-- Display the names of employees whose birthdays are in the next 30 days.

SELECT Name, DateOfBirth
FROM Employees5
WHERE 
    DATE_FORMAT(DateOfBirth, '%m-%d') BETWEEN 
    DATE_FORMAT(CURDATE(), '%m-%d') AND 
    DATE_FORMAT(DATE_ADD(CURDATE(), INTERVAL 30 DAY), '%m-%d');
    
    
