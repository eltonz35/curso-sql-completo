 --WHERE --

 --SELECT coluna1, coluna2, coluna_n
 --FROM tabela
 --WHERE condi��o; --

 /* 

 OPERADOR     -     DESCRI��O
 =                  IGUAL
 >                  MAIOR QUE
 <                  MENOR QUE
 >=                 MAIOR QUE OU IGUAL
 <=                 MENOR QUE OU IGUAL
 <>                 DIFERENTE DE 
 AND                OPERADOR LOGICO E
 OR                 OPERADOR LOGICO OU

 */

 SELECT *
 FROM Person.Person
 WHERE LastName = 'Miller' AND FirstName = 'Anna'

 SELECT *
 FROM Production.Product
 WHERE Color = 'blue' OR Color = 'black'

 SELECT *
 FROM Production.Product
 WHERE ListPrice > 1500 AND ListPrice < 5000

 SELECT *
 FROM Production.Product
 WHERE Color <> 'red'

 --DESAFIO 01--

 /* A EQUIPE DE PRODU��O DE PRODUTOS PRECISA DO NOME DE TODAS AS PESSAS QUE PESAM
 MAIS QUE 500KG MAS N�O MAIS QUE 700KG PARA INSPE��O */
 --WHEIGHT

 SELECT *
 FROM Production.Product
 WHERE Weight > 500 AND Weight <= 700

 --DESAFIO 02--

 /* FOI PEDIDO PELO MARKETING UM RELA��O DE TODOS OS EMPREGADOS(EMPLOYEES) QUE S�O
 CASADOS(SINGLE = SOLTEIRO, MARRIED = CASADO) E S�O ASSALARIADOS(SALARIED) */

 SELECT *
 FROM HumanResources.Employee
 WHERE MaritalStatus = 'M' AND SalariedFlag = 'true'

 --DESAFIO 03--

 /* UM USUARIO CHAMADO PETER KREBS EST� DEVENDO UM PAGAMENTO, CONSIGA O EMAIL DELE
 PARA QUE POSSAMOS ENVIAR UMA COBRAN�A!
 (VOCE VAI TER QUE USAR A TABELA PERSON.PERSON E DEPOIS A TABELA PERSON.EMAILADDRESS)
 -BUSINNESENTITYID
 */

 SELECT *
 FROM Person.Person
 WHERE FirstName = 'PETER' AND LastName = 'KREBS'

 SELECT *
 FROM Person.EmailAddress 
 WHERE BusinessEntityID = '26'