# data-base-mySQL
banco de dados mySQL com curso em video 

o codigo sql completo de cada aula está no mySQLscript.txt

minhas ***anotacoes:**** do curso

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

   👨‍💻
   ```sql
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
   describe pessoas;         /*o comando describe ou simplesmente desc 
                              para mostar as propriedades da tabela */
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
   ```sql
   select * from pessoas 
   ```
   
   cadastrar alguem na nossa db com ``` insert into ```
   
   ```sql
   insert into pessoas 
   (nome, nascimento,sexo, peso, altura ,nacionalidade)
   value
   ('Maria','1984-12-30','F','55.2','1.60','Angola');
   ```
   o comando ``` select * from pessoas; ``` para afixar todos elementos cadastrados 
   para cadastrar varias peesoas AO MESMO Tempo
   ```sql
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
   ```sql
   alter table pessoas 
   add column profissao varchar(10); 
   ```
   adicionara uma coluna profissao depois da coluna nome 
   ```sql
   alter table pessoas 
   add column profissao varchar(10) after nome ; 
   ```
   adicionara uma coluna e posionar-la no topo 
   ```sql
   alter table pessoas 
   add column codigo int first ; 
   ```
   para modifcar a estruta da coluna, 
   o comando MODIFY muda o tipo primitivo e a constrants da coluna
   ```sql
   alter table pessoas 
   modify column profissao varchar(20) default'estudante';
   ```
   para modifcar o nome da coluna profissao para prof, 
   o comando CHANGE pode mudar o nome, o tipo primitivo e as constrants da coluna
   ```sql
   alter table pessoas 
   change column profissao prof varchar(20); 
   ```
   para modifcar o nome da tabela
   ```sql
   alter table pessoas 
   rename to Gafanhotos; 
   ```
   comando drop
   
   - para eliminar uma tabela
      ```drop table if exists aluno; ```
   
   - para eliminar uma coluna
      ```sql
      alter table pessoas 
      drop column profissao;
      ```
## AULA 7: 
Manipulando linhas ou registro ou tuplas

para evitar mudar varios dados de preferencia usar o WHERE com uma primary key
```sql
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
  
## AULA 11,12 & 13:

Comando ``` select ```


```select * from cursos order by nome;```

select * from cursos order by nome desc; /*ordem decrecente, esse desc sig descendent */

flitar as colunas

```select nome, carga , ano from cursos;```

flitar as linhas(registros)

```select * from cursos where ano = '2016';```

```sql select ano, carga from cursos where ano <= '2016';``` podes usar outros OPERADORES OPERACIONAIS como: <, >, != , >=,e saiba <> sig diferente */

```select * from cursos where ano between 2014 and 2016;``` 

```select * from cursos where ano in ('2014','2016');```

```select * from cursos where carga > 35 AND totaulas < 30 order by nome;``` OPERADORES LOGICOS: and, or ; xor , equal 

```select * from cursos where carga > 35 OR totaulas < 30 order by nome;``` 
 
result-set é o resultado de uma consulta, é o que aparece na tela 
query sig pergunta ou solicitaçao 

/*agrupamento*/
use cadastro;
select totaulas, count(*) from cursos group by totaulas order by totaulas; 

select ano, count(*) from cursos 
group by ano having ano > 2014 /*comando having depende do group by*/
order by count(*) desc; 
 diferença entre o uso do DISTINCT e do GROUP BY 
 o comando having depende do group by
 
## Aula14&15

/*RALACIONAMENTO ENTRE TABELAS:
 
relacionamento de 1 pra 1
relacionamento de 1 pra muitos
relacionamento de muitos pra muitos

```delete from cursos where id='5';``` esse comanda resultara em erro por causa da ligacao das tabelas pela forgein key

 afixando as colunas dos gafanhotos e cursos num so comando: relacionamento de 1 pra muitos
 ```sql
 select Gafanhotos.nome, Gafanhotos.cursoPreferido, cursos.nome, 
 cursos.ano from Gafanhotos join cursos on cursos.IDcurso = Gafanhotos.cursoPreferido;
 ```

uso do 'as' pra substituicao
```sql
select G.nome, G.cursoPreferido, C.nome, 
 C.ano from Gafanhotos as G join cursos as C on C.IDcurso = G.cursoPreferido;
 ```
 
 uso do 'right/left outer' pra afixar todos Gafanhos mesmo os sem cursoPreferido 
 ou corsos que nao foram preferidos por ninguem 
 
  dando prefenrias a esquerda ou seja aos gafanhotos 
 ```sql
 select Gafanhotos.nome, Gafanhotos.cursoPreferido, cursos.nome, 
 cursos.ano from Gafanhotos left outer join cursos on cursos.IDcurso = Gafanhotos.cursoPreferido;
 ```
 
 /*dando prefenrias a direita ou seja aos cursos */
 ```sql
 select Gafanhotos.nome, Gafanhotos.cursoPreferido, cursos.nome, 
 cursos.ano from Gafanhotos right outer join cursos on cursos.IDcurso = Gafanhotos.cursoPreferido;
 ```

## Aula16

👨‍💻

usando duas tabelas
```sql
select g.id, g.nome, a.ID_gafanhotos, ID_cursos from gafanhotos as g 
join gafanhoto_assite_curso as a 
on g.id = a.ID-ID_gafanhotos;
```

usando tres tabelas
```sql
select g.nome, a.ID_cursos, c.nome from gafanhotos as g 
join gafanhoto_assite_curso as a 
on g.id = a.ID-ID_gafanhotos join cursos c on c.IDcurso = a.ID_cursos;
```

usando tres tabelas com todos cursos sendo assistido
```sql
select g.nome, a.ID_cursos, c.nome from gafanhotos as g right outer
join gafanhoto_assite_curso as a 
on g.id = a.ID-ID_gafanhotos join cursos c on c.IDcurso = a.ID_cursos;
```
