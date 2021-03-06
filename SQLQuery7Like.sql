--LIKE--

--VAMOS DIZER QUE VC QUER ENCONTRAR UMA PESSOA NO BANCO DE DADOS QUE VC SABE QUE O NOME DELA
--ERA OVI...ALGUMA COISA 

--SELECT *
--FROM PERSON.PERSON
--WHERE FIRSTNAME LIKE 'OVI%'

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%TO'

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ESSA%'

--DESAFIO FUNDAMENTOS SQL (FUNDAMENTOS)--

/* QUANTOS PRODUTOS TEMOS CADASTRADOS NO SISTEMA QUE CUSTAM MAIS QUE 1500 DOLARES? */

SELECT COUNT (ProductID)
FROM Production.Product
WHERE ListPrice > 1500

/* QUANTAS PESSOAS TEMOS COM O SOBRENOME QUE INICIAM COM A LETRA P? */

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'

/* EM QUANTAS CIDADES UNICAS EST?O CADASTRADAS NOSSOS CLIENTES */

SELECT COUNT(DISTINCT City)
FROM  Person.Address

/* QUAIS S?O AS CIDADES UNICAS QUE TEMOS CADASTRADOS EM NOSSO SISTEMA? */

SELECT DISTINCT City
FROM Person.Address

/* QUANTOS PRODUTOS VERMELHOS TEM PRE?O ENTRE 500 A 1000 DOLARES? */

SELECT COUNT(*)
FROM Production.Product
WHERE COLOR = 'RED' AND
ListPrice  BETWEEN 500 AND 1000 

/* QUANTOS PRODUTOS CADASTRADOS TEM A PALAVRA 'ROAD' NO NOME DELES? */

SELECT COUNT(Name)
FROM Production.Product
WHERE Name LIKE '%ROAD%'