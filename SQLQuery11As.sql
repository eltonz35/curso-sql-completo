-- AS + DESAFIOS(INTERMEDIARIOS)--

SELECT TOP 10 ListPrice AS "Pre?o do Produto"
FROM Production.Product

SELECT TOP 10 AVG(ListPrice) AS "Pre?o M?dio"
FROM Production.Product

/* ENCONTRAR O FIRSTNAME E LASTNAME PERSON.PERSON */

SELECT FirstName AS NOME, LastName AS SOBRENOME
FROM Person.Person

/* PRODUCTNUMBER DA TABELA PRODUCTION.PRODUCT "NUMERO DO PRODUTO" */

SELECT ProductNumber AS "NUMERO DO PRODUTO"
FROM Production.Product

/* SALES.SALESORDERDETAIL UNITPRICE "PRE?O UNIT?RIO" */

SELECT UnitPrice AS "PRE?O UNIT?RIO"
FROM Sales.SalesOrderDetail