--SUBQUERIES--

--MONTE UM RELATÓRIO PARA MIM DE TODOS OS PRODUTOS CADASTRADOS QUE TEM PREÇO 
--DE VENDA ACIMA DA MÉDIA

--SELECT AVG(ListPrice)
--FROM Production.Product

--SELECT *
--FROM Production.Product
--WHERE ListPrice > 438.67

SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

--EU QUERO SABER O NOME DOS MEUS FUNCIONÁRIOS QUE TEM O CARGO DE "DESIGN ENGINEER"

SELECT *
FROM Person.Person

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer'

SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer')

SELECT P.FirstName
FROM Person.Person P
INNER JOIN HumanResources.Employee E ON P.BusinessEntityID = E.BusinessEntityID
AND E.JobTitle = 'Design Engineer'

--EXERCÍCIO--

--ENCONTRAR TODOS OS ENDEREÇOS QUE ESTÃO NO ESTADO DE 'ALBERTA', PODE TRAZER TODAS INFORMAÇÕES

SELECT *
FROM Person.Address

SELECT *
FROM Person.StateProvince

SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID FROM Person.StateProvince
WHERE Name = 'ALBERTA')