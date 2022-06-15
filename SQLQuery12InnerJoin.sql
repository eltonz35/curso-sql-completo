--INNER JOIN + DESAFIOS--

--EXISTEM 3 TIPOS GERAIS DE JOIN;
--INNER JOIN, OUTER JOIN E SELF-JOIN

--SELECT C.CLIENTEID, C.NOME, E.RUA, E.CIDADE
--FROM CLIENTE C
--INNER JOIN ENDERECO E ON E.ENDERECOID = C.ENDERECOID

--|2| BRUNO | RUA NORTE | SÃO PAULO

/* BUSINESSENTITYID, FIRSTNAME, LASTNAME, EMAILADDRESS */

SELECT TOP 10 *
FROM Person.Person

SELECT TOP 10 *
FROM Person.EmailAddress 

SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person AS p
INNER JOIN Person.EmailAddress PE ON p.BusinessEntityID = pe.BusinessEntityID 

--VAMOS DIZER QUE NÓS QUEREMOS OS NOMES DOS PRODUTOS E AS INFORMAÇÕES DE SUAS
--SUBCATEGORIAS
--ListPrice, NOME DO PRODUTO, NOME DA SUBCATEGORIA

SELECT TOP 10 *
FROM Production.Product

SELECT TOP 10 *
FROM Production.ProductSubcategory

SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product pr
INNER JOIN Production.ProductSubcategory pc ON pr.ProductSubcategoryID = pc.ProductSubcategoryID 

--JUNTANDO DUAS TABELAS QUAISQUER--

SELECT TOP 10 *
FROM Person.BusinessEntityAddress

SELECT TOP 10 *
FROM Person.Address

SELECT TOP 10 * 
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID

--DESAFIO 01--

SELECT TOP  10 *
FROM Person.PhoneNumberType

SELECT TOP 10 *
FROM Person.PersonPhone

--BUSINESSENTITYID, NAME, PHONENUMBERTYPEID, PHONENUMBER

SELECT TOP 10 pp.BusinessEntityID, pt.Name, pt.PhoneNumberTypeID, pp.PhoneNumber 
FROM Person.PersonPhone pp
INNER JOIN Person.PhoneNumberType pt ON pt.PhoneNumberTypeID = pp.PhoneNumberTypeID

--DESAFIO 02--

SELECT TOP 10 *
FROM Person.StateProvince

SELECT TOP 10 *
FROM Person.Address

--ADDRESSID, CITY, STATEPROVINCEID, NOME DO ESTADO

SELECT TOP 10 pa.AddressID, pa.City, ps.StateProvinceID, ps.Name
FROM Person.Address pa
INNER JOIN Person.StateProvince ps ON ps.StateProvinceID = pa.StateProvinceID
