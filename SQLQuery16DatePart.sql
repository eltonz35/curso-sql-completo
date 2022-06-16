--DATEPART--

SELECT SalesOrderID, DATEPART(MONTH,OrderDate) AS MES
FROM Sales.SalesOrderHeader

SELECT AVG(TotalDue) AS MEDIA, DATEPART(MONTH, OrderDate) AS MES
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY MES

SELECT SUM(Quantity), DATEPART(DAY,ModifiedDate) AS DIA 
FROM Production.ProductInventory
GROUP BY DATEPART(DAY,ModifiedDate)
ORDER BY DIA