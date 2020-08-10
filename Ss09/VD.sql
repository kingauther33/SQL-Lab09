USE AdventureWorks2016CTP3

CREATE VIEW ProductList
AS
	SELECT p.ProductID, p.Name FROM AdventureWorks2016CTP3.Production.Product p;

SELECT * FROM dbo.ProductList pl

CREATE VIEW SalesOrderDetail
AS
	SELECT sod.ProductID, sod.SalesOrderID, sod.UnitPrice, sod.OrderQty,
sod.UnitPrice * sod.OrderQty AS [Total Price]
	FROM AdventureWorks2016CTP3.Sales.SalesOrderDetail sod
	JOIN AdventureWorks2016CTP3.Production.Product p
	ON sod.ProductID = p.ProductID

SELECT * FROM dbo.SalesOrderDetail sod