 /* SELECT
 --SQL Server, Postegres, Oracle, mySQL

 SELECT coluna1, coluna2
 FROM tabela

 SELECT * 
 FROM tabela */ 


 SELECT *
 FROM Person.Person;

 SELECT Title
 FROM Person.Person

 SELECT *
 from Person.EmailAddress

 --DESAFIO--
 /* A EQUIPE DE MARQUETING PRECISA DE FAZER UMA PESQUISA SOBRE NOMES MAIS COMUNS 
 DE SEUS CLIENTES E PRECISA DO NOME E SOBRENOME DE TODOS OS CLIENTES QUE EST�O
 CADASTRADOS NO SISTEMA. 
 */

 SELECT FirstName, LastName
 FROM Person.Person;

 --DESAFIO--
 /* QUANTOS SOBRENOMES UNICOS TEMOS EM NOSSA TABELA PERSON.PERSON?
 */

 SELECT DISTINCT LastName
 FROM Person.Person;