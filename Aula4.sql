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
primary key(id) /* identifica os registros e da utomaticamente um valor*/
)default charset = utf8;
