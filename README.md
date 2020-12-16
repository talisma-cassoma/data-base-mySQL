# data-base-mySQL
data base mySQL with curso em video 

***anotacoes:**** 

#aula 3:

criamos o primeiro banco de dados 

```
create database cadastro;/* comando pra criar base de dados*/ 
use cadastro;             /*o comando use para selecionar a base de dados */
create table pessoas(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);
describe pessoas;         /* o comando describe para */

```

#Aula 4:

```drop database cadastro; ``` <div class="text-blue mb-2">esse comnado apaga o db</div>
```bash

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
```
#aula 5 

para afixar a bd usamos o comando 
```select * from pessoas ```

cadastrar alguem no nossa db
```bash
insert into pessoas 
(nome, nascimento,sexo, peso, altura ,nacionalidade)
value
('Maria','1984-12-30','F','55.2','1.60','Angola');
```
o comando ``` select * from pessoas; ```
 cadastrar varias peesoas AO MESMO Tempo 
 ```bash 
 insert into pessoas 
(nome, nascimento,sexo, peso, altura ,nacionalidade)
value
('Agusta','1975-11-11','F','55.2','1.60','Angola'),
('Calrlos','1999-05-16','M','30','1.55','EUA'),
('Neusa','1994-12-30','F','80','1.90','Portgal'),
('Raul','2000-01-01','M','72','1.60','Grécia');
 ```
 

