// criando tabela
create table funcionario(
  id serial,
  nome varchar(255),
  cpf char(11),
  observacao text,
  idade integer,
  salario numeric(10,2),
  ativo boolean,
  data_nascimento date,
  hora_aula time,
  matriculado_em timestamp

)

// insert de dados
insert into funcionario
(
  nome,
  cpf,
  observacao,
  idade,
  salario,
  ativo,
  data_nascimento,
  hora_aula,
  matriculado_em

)
values(
  'kemoel',
  '12921944392',
  'Desenvolvedor FullClycle',
  27,
  18230.90,
  TRUE,
  '1994-05-19',
  '20:10:59',
  '2022-05-22 20:11:59'
);

// buscando dados no banco
select * from funcionario;

// busca com where
select * from funcionario  where id = 2;

// alterando uma linha na tabela
update funcionario
  set 
  nome = 'Kalenne',
  cpf = '00099933343',
  observacao = 'Testando Update',
  idade = 48,
  salario = 19544.90,
  ativo = FALSE,
  data_nascimento = '1992-12-24',
  hora_aula = '12:23:59',
  matriculado_em = '2022-05-27 22:23:59'
where id = 1;
  
// Delentando uma linha a partir de um campo
delete from fucionarios where nome='Kalenne'

// Buscando por coluna com ailas
select 
  nome as "Nome do Funcionario",
  matriculado_em as quando_se_matriculou,
from
  funcionario;

// Buscas de outras maneiras (!= Diferentes <>), retorna todos os registros diferentes de 'kemoel'
select * 
  from funcionario
  where nome <> 'Kemoel';

// Busca com paramentros que sao parecidos com o parametro de busca
select * 
  from funcionario
  where nome LIKE 'Kalen_e'

// Busca com paramentros que nao sao parecidos com o parametro de busca
select * 
  from funcionario
  where nome NOT LIKE 'Kalen_e'

// Retorna todos os registros que terminam com 'e'
select *
  from funcionario
  where nome LIKE '%l%e'

// Retorna os registros onde cpf e NULL
select *
  from funcionario
  where cpf IS NULL;

// Retorna os registros onde cpf nao e NULL
select *
  from funcionario
  where cpf IS NOT NULL;

// Retorna todos os registros com idade menor que 50
select *
  from funcionario
  where idade <= 50;  

// Retorna todos os registros com idade entre 20 e 50
select *
  from funcionario
  where idade BETWEEN 20 AND 50;

// Busca em campos booleanos
select *
  from funcionario
  where ativo = TRUE

// Busca com operadores logicos
select *
  from funcionarios
    where nome LIKE 'D%'
    and cpf IS NOT NULL

select *
  from funcionario
    where nome LIKE 'K%'
    or nome LIKE 'C%'