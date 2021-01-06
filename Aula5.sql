/*para afixar a bd usamos o comando select * from pessoas */
use cadastro;
/* vamos cadastrar alguem no nosso db*/
insert into pessoas 
(nome, nascimento,sexo, peso, altura ,nacionalidade)
value
('Maria','1984-12-30','F','55.2','1.60','Angola');
select * from pessoas;
