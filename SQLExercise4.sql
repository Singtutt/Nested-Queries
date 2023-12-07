USE northwind;
-- Page 77 --
-- 1 --

SELECT 
    ProductName
FROM
    Products
WHERE
    UnitPrice = (
		SELECT 
            MAX(UnitPrice)
        FROM
            Proucts
	);

-- 2 --
SELECT 
    OrderID, 
    ShipName,
    ShipAddress
FROM
    orders
WHERE
    ShipVia = (
		SELECT 
            ShipperID
        FROM
            Shippers
        WHERE
            CompanyName LIKE 'Federal Shipping'
	);
    
-- 3 --
SELECT
	OrderID,
	ProductID
FROM
	`order details`
WHERE
	ProductID IN (
    SELECT
		ProductID
	FROM
		`order details`
	WHERE
		ProductID = 34
	);
    
-- 4 --
SELECT
	FirstName,
	LastName
FROM
	employees
WHERE
	EmployeeID IN (
	SELECT
		EmployeeID
	FROM
		employees
	WHERE
		EmployeeID = 3
	);
    
-- 5 --
SELECT
	CompanyName
FROM
	Customers
WHERE
	CustomerID IN (
	SELECT
		CustomerID
	FROM
		Customers
	WHERE
		CustomerID LIKE '%WARTH%'
    );