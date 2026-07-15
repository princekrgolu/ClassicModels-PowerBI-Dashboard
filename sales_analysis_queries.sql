SHOW DATABASES;
USE classicmodels;
SHOW TABLES;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT customerName, country
SELECT customerName, country
FROM customers

SELECT customerName, country
FROM customers
WHERE country = 'USA';

SELECT customerName, country
FROM customers
WHERE country = 'France';

SELECT customerName, phone
FROM customers
WHERE country = 'France'
ORDER BY customerName ASC;

SELECT customerName, phone
FROM customers
WHERE country = 'France'
ORDER BY customerName
LIMIT 5;

SELECT COUNT(*) AS TotalCustomers
FROM customers;

SELECT SUM(amount) AS TotalRevenue
FROM payments;

SELECT AVG(amount) AS AveragePayment
FROM payments;

SELECT MIN(amount) AS MinimumPayment
FROM payments;

SELECT MAX(amount) AS MaximumPayment
FROM payments;

SELECT country,
       COUNT(*) AS TotalCustomers
FROM customers
GROUP BY country;

SELECT country,
       COUNT(*) AS TotalCustomers
FROM customers
GROUP BY country
HAVING COUNT(*) > 5;

SELECT
    customers.customerName,
    orders.orderNumber,
    orders.orderDate
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber;

SELECT
    customers.customerName,
    orders.orderNumber,
    orderdetails.productCode,
    orderdetails.quantityOrdered
FROM customers
INNER JOIN orders
    ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
    ON orders.orderNumber = orderdetails.orderNumber;
    
    SELECT
    c.customerName,
    o.orderNumber,
    p.productName,
    od.quantityOrdered,
    od.priceEach,
    (od.quantityOrdered * od.priceEach) AS Sales
FROM customers c
INNER JOIN orders o
    ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails od
    ON o.orderNumber = od.orderNumber
INNER JOIN products p
    ON od.productCode = p.productCode;

