use assignments;

CREATE TABLE Products1 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2),
    QuantitySold INT,
    Category VARCHAR(50)
);


INSERT INTO Products1 (ProductID, ProductName, Price, QuantitySold, Category)
VALUES
(1, 'Laptop', 800.00, 5, 'Electronics'),
(2, 'Smartphone', 600.00, 10, 'Electronics'),
(3, 'Desk Chair', 120.00, 15, 'Furniture'),
(4, 'Table', 200.00, 8, 'Furniture'),
(5, 'Notebook', 5.00, 20, 'Stationery'),
(6, 'Pen', 2.00, 50, 'Stationery');


select * from products1;

-- Retrieve all products whose price is higher than the average price of all products.

select * from
products1
where price > (
select avg(price) from products
);


-- Write a query to display the name and price of the most expensive product.

select productname, price
from products1
where price = (
select max(price) from products1
);

-- Write a query to display the total number of products in each category using a subquery.

SELECT Category, 
       (SELECT COUNT(*) 
        FROM Products p2 
        WHERE p2.Category = p1.Category) AS TotalProducts
FROM Products p1
GROUP BY Category;

-- Write a query to find products that sold fewer units than the average quantity sold across all products.

select * from
products1
where quantitysold <(
select avg(quantitysold) from products1
);

-- Create a view called ElectronicsView that contains the details of all products in the "Electronics" category from the Products table.

CREATE VIEW ElectronicsView AS
SELECT *
FROM Products
WHERE Category = 'Electronics';


select * from electronicsview;






