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

   ```not null``` prenchimento obrigatorio<br>  
    ```auto_increment``` auto incrementa<br> 
   tipo primitvo  ```date``` para datas <br>
    ```enum('M','F')``` só aceita as opçōes definidas (M e F)<br> 
   tipo primitivo ```decimal(5,2) ``` 5 digitos com 2 casas decimais<br>
    ``` default 'Brasil' ``` valor préstabelecido<br>
    ``` primary key(id) ``` identifica os registros e da utomaticamente um valor<br>

## AULA 5: 
   
   para afixar a bd usamos o comando 
   ```select * from pessoas ```
   
   cadastrar alguem na nossa db com ``` insert into ```
   
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
Manipulando linhas ou registro ou tuplas

para evitar mudar varios dados de preferencia usar o WHERE com uma primary key
```
update cursos set nome = 'HTML5'
where IDcurso = '1';
```

```update cursos set nome='PHP', ano = '2015' where IDcurso = '4';```  mudar varios parametros de uma vez
```update cursos set nome= 'JAVA', carga='40', ano='2015' where IDcurso ='5' ;``` mudar varios parametros de uma vez

⚠️ Acçōes nāo muito recomendadas:

```update cursos set carga='0', ano='2018' where ano ='2050';``` mudara o carga e o ano pra todas linhas em que ano for 2018

```delete from cursos  where iDcurso = '8';``` apagar linhas(registros) 
```delete from cursos  where ano = '2018';```  apagara todas linhas(registros) em que ano for 2018

```truncate cursos ;``` apagar todas linhas(registros) da tabela 

## AULA 8:
salvando a DB usando(fazendo dump do DB)
banco de dados
 
 /*depois de fazer um dump(backup do db cadastro)*/
 
 /*drop database cadastro; /*apagamos o banco de dados*/ 
 
 exportando o db
      
          ↳ server 
          
               ↳ Data export
 
 /*importamos os DB gurdada com a estrutura e do dados */
 importando o db
          
          ↳ server 
          
               ↳ Data import
  
## AULA 11 & 12:
 Comando select```

