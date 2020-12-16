# data-base-mySQL
data base mySQL with curso em video 

***anotacoes:**** 

#aula 3:

/* criamos o primeiro banco de dados 
*/
create database cadastro;/* comando pra criar base de dados*/ 
use cadastro;             /*o comando ****use*** para selecionar a base de dados */
create table pessoas(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);
describe pessoas;         /* o comando ***describe*** para */

#Aula 4:

/*drop database cadastro; /*apagou o db da primeira aula*
create database cadastro
default character set utf8
collate utf8_general_ci;*/
use cadastro;
create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),/* ou um ou outro*/
peso decimal(5,2), /*5 digitos com 2 casas decimais*/
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
)default charset = utf8;

