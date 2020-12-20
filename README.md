# data-base-mySQL
data base mySQL with curso em video 

***anotacoes:**** 

## AULA 3:

     
     banco de dados
      
          ↳ tabelas 
          
               ↳ campos(colunas)
   
# DDL
   - create
   - alter
   - drop

# DML
   - insert into
   - update
   - delete
   - truncate

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
   describe pessoas;         /*o comando describe ou simplesmente desc para mostar as propriedades da tabela */
   ```

## AULA 4: 

   ```drop database cadastro;```  esse comnado apaga o db 

## AULA 5: 
   
   para afixar a bd usamos o comando 
   ```select * from pessoas ```
   
   cadastrar alguem no nossa db com ``` insert into ```
   
   ```
   insert into pessoas 
   (nome, nascimento,sexo, peso, altura ,nacionalidade)
   value
   ('Maria','1984-12-30','F','55.2','1.60','Angola');
   ```
   o comando ``` select * from pessoas; ``` para afixar todos elementos cadastrados 
   para cadastrar varias peesoas AO MESMO Tempo 
    
    ```
    insert into pessoas 
    (nome, nascimento,sexo, peso, altura ,nacionalidade)
    value
    ('Agusta','1975-11-11','F','55.2','1.60','Angola'),
    ('Calrlos','1999-05-16','M','30','1.55','EUA'),
    ('Neusa','1994-12-30','F','80','1.90','Portgal'),
    ('Raul','2000-01-01','M','72','1.60','Grécia');
    ``` 
  
   commandos DDL: camando de definicao
 
## AULA 6:
   manipulação de colunas 
   modificacoes da estrutura do db com  ```alter table```
   
   para adicionar uma coluna 
   ``` alter table pessoas 
   add column profissao varchar(10); 
   ```
   adicionara uma coluna profissao depois da coluna nome 
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
   o comando MODIFY muda o tipo primitivo e a constrants da coluna
   ```
   alter table pessoas 
   modify column profissao varchar(20) default'estudante';
   ```
   para modifcar o nome da coluna profissao para prof, 
   o comando CHANGE pode mudar o nome, o tipo primitivo e as constrants da coluna
   ```
   alter table pessoas 
   change column profissao prof varchar(20); 
   ```
   para modifcar o nome da tabela
   ```
   alter table pessoas 
   rename to Gafanhotos; 
   ```
   comando drop
   
   - para eliminar uma tabela
      ```drop table if exists aluno; ```
   
   - para eliminar uma coluna
      ```
      alter table pessoas 
      drop column profissao;
      ```
## AULA 7: 
