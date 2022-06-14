--HAVING + DESAFIOS(INTERMEDIARIOS)--

--O HAVING � BASICAMENTE MUITO USADO EM JUN��O COM O GROUP BY PARA FILTRAR 
--RESULTADOS DE UM AGRUPAMENTO

--DE UMA FORMA MAIS SIMPLES EU GOSTO DE ENTENDER ELE COMO BASICAMENTE UM WHERE PARA
--DADOS AGRUPADOS.

--SELECT COLUNA1, FUNCAOAGREGACAO(COLUNA2)
--FROM NOMETABELA
--GROUP BY COLUNA1
--HAVING CONDICAO;

--A GRANDE DIFEREN�A ENTRE HAVING E WHERE.
--� QUE O GROUP BY � APLICADO DEPOIS QUE OS DADOS J� FORAM AGRUPADOS, ENQUANTO O
--WHERE � APLICADO ANTES DOS DADOS SEREM AGRUPADOS.

/* VAMOS DIZER QUE QUEREMOS SABER QUAIS NOMES NO SISTEMA TEM UMA OCCORENCIA MAIOR 
QUE 10 VEZES, POREM SOMENTE ONDE O TITULO � 'MR.'  */

SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

/* POR EXEMPLO QUEREMOS SABER QUAIS PRODUTOS QUE NO TOTAL DE VENDAS 
EST�O ENTRE 162K E 500K */

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT ProductID, SUM(LineTotal) AS "TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

--DESAFIO 01--

/* ESTAMOS QUERENDO IDENTIFICAR AS PROVINCIAS(STATEPROVINCEID) COM MAIOR NUMERO
DE CADASTROS NO NOSSO SISTEMA, ENT�O � PRECISO ENCONTRAR QUAIS PROVINCIAS EST�O
REGISTRADAS NO BANCO DE DADOS MAIS QUE 1000 VEZES */

SELECT  StateProvinceID, COUNT(StateProvinceID) "QUANTIDADE"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

--DESAFIO 02-

/* SENDO QUE SE TRATA DE UMA MULTINACIONAL OS GERENTES QUEREM SABER QUAIS PRODUTOS 
(PRODUCTID) N�O EST�O TRAZENDO EM MEDIA NO MINIMO 1 MILH�O EM TOTAL DE VENDAS(LINETOTAL) */

SELECT ProductID, AVG(LineTotal) AS "MEDIA"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000