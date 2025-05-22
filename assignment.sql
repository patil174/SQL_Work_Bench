use assignments;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductCategory VARCHAR(50),
    Quantity INT,
    TotalPrice DECIMAL(10, 2),
    OrderDate DATE
);


INSERT INTO Orders (OrderID, CustomerName, ProductCategory, Quantity, TotalPrice, OrderDate)
VALUES
(1, 'Alice', 'Electronics', 2, 1600.00, '2024-11-01'),
(2, 'Bob', 'Furniture', 1, 300.00, '2024-11-02'),
(3, 'Charlie', 'Electronics', 1, 800.00, '2024-11-03'),
(4, 'Diana', 'Stationery', 10, 50.00, '2024-11-04'),
(5, 'Eve', 'Electronics', 3, 2400.00, '2024-11-05'),
(6, 'Frank', 'Stationery', 20, 100.00, '2024-11-06');


select * from orders;

-- Group the total quantity sold for each product category.

select ProductCategory,sum(Quantity) as TotalQuantitySold
from orders
group by productcategory;

-- Find product categories where the total quantity sold is greater than 10.

select productcategory,sum(quantity) as totalsumquantity
from orders
group by productcategory
having sum(quantity)>10;

-- Calculate the average total price per product category.

select avg(totalprice) as avgtotalprice,productcategory
from orders
group by productcategory
having avg(totalprice);

-- Find product categories where the average total price is less than 1000.

select productcategory,avg(totalprice) as average_total_price
from orders
group by productcategory
having avg(totalprice)<1000;

-- . Add a column to classify orders as High Value (TotalPrice > 1000) or Low Value (use CASE WHEN).

SELECT OrderID, CustomerName, ProductCategory, Quantity, TotalPrice, OrderDate,
       CASE
           WHEN TotalPrice > 1000 THEN 'High Value'
           ELSE 'Low Value'
       END AS OrderValueClassification
FROM Orders;



