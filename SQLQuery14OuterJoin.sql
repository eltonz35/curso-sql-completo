--OUTER JOIN--

--LEFT OUTER JOIN
--LEFT JOIN

--QUERO DESCOBRIR QUAIS PESSOAS TEM UM CART?O DE CREDITO REGISTRADO

SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL
--INNER JOIN: 19118
--LEFT JOIN: 19972
