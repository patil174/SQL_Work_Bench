use assignments;

CREATE TABLE Orders3 (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    Amount DECIMAL(10, 2)
);


INSERT INTO Orders3 (OrderID, OrderDate, Amount)
VALUES
(1, '2024-11-01', 250.50),
(2, '2024-11-02', 300.75),
(3, '2024-11-03', 150.25);


-- Convert the Amount column to a string.

SELECT OrderID, 
       CAST(Amount AS CHAR) AS AmountAsString
FROM Orders3;

-- 	Convert the OrderDate column to a string format.

SELECT OrderID, 
       DATE_FORMAT(OrderDate, '%Y-%m-%d') AS OrderDateAsString
FROM Orders3;

--   	Convert a string value 2024-11-05 into a date format.

SELECT STR_TO_DATE('2024-11-05', '%Y-%m-%d') AS ConvertedDate;

--   	Extract the year from the OrderDate column.

select orderid , year(orderdate) as order_year from orders3;

-- Concatenate OrderDate and Amount into a single string.

SELECT OrderID, 
       CONCAT(OrderDate, ' - $', Amount) AS OrderSummary
FROM Orders3;



