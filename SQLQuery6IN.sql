--IN--

--N?S USAMOS O OPERADOR IN JUNTO COM O WHERE, PARA VERIFICAR SE UM VALOR CORRESPONDE COM 
--QUALQUER VALOR PASSADO NA LISTA DE VALORES.
--VALOR IN(VALOR1, VALOR2)
--COLOR IN('BLUE','BLACK')
--VALOR IN(SELECT VALOR FROM NOMEDATABELA)

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN(2,7,13)
