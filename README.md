# data-base-mySQL
data base mySQL with curso em video 

***anotacoes:**** 

<h2> #aula 3: </h2>

- banco de dados
-           tabelas 
-                campos(colunas)
   

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
describe pessoas;         /* o comando describe ou simplesmente desc para mostar as propriedades da tabela */
```

<h2> #aula 4: </h2>

```drop database cadastro; ``` esse comnado apaga o db 
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
<h2> #aula 5: </h2>

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
 commandos DDL: camando de definicao
 
 <h2> #aula 6: </h2>

 modificacoes da estrutura do db com  ```alter table```
 
para adicionar uma coluna 
``` alter table pessoas 
add column profissao varchar(10); 
```

para eliminar uma coluna
```alter table pessoas 
drop column profissao;
```
adicionara uma coluna 
profissao depois do nome */
```
alter table pessoas 
add column profissao varchar(10) after nome ; 
```
adicionara uma coluna e posionar-la no topo 
```
alter table pessoas 
add column codigo int first ; 
```
para modifcar a estruta da coluna, 
o comando MODIFY muda o tipo primitivo e a constrants da coluna*/
```
alter table pessoas 
modify column profissao varchar(20) default'estudante';
```
para modifcar o nome da coluna para prof, 
o comando CHANGE o nome, o tipo primitivo e as constrants da coluna
```
alter table pessoas 
change column profissao prof varchar(20); 
```
para modifcar o nome da tabela
```
alter table pessoas 
rename to Gafanhotos; 
```
vamos criar outra tabela 
```
use cadastro;
create table if not exists cursos(
nome varchar(30) not null unique,   /* o comando unique nao permite dois elementos com o mesmo nome*/
descricao text, 					/* varchar()≠text, o tipo text é para texto longos*/
carga int,
totaulas int unsigned,
ano year default'2020'
)default charset = utf8; 

alter table cursos
add column IDcurso int unsigned first;
alter table cursos
add primary key(IDcurso);
```
comando drop
```
drop table if exists aluno;  
```
