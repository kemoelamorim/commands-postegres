// tabela com id sem chame unica
create table curso(
  id integer not null,
  nome varchar(255) not null
);

insert into curso (id, nome) values (1, 'Javascript')
insert into curso (id, nome) values (1, 'html')

// tabela com chave unica
create table curso(
  id integer not null unique,
  nome varchar(255) not null
)

// tabela com chave
create table curso(
  id integer primary key,
  nome varchar(255) not null,
)

create table aluno (
  id serial primary key,
  nome varchar(255) not null,
)

insert into curso(id, nome) values(1, 'html')
insert into curso(id, nome) values(2, 'Java')

insert into aluno ('kemoel')
insert into aluno ('thamiris')

create table aluno_curso(
  aluno_id integer,
  curso_id integer,
  primary key(aluno_id, curso_id)
)

insert into aluno_curso(
  aluno_id,
  curso_id
) values (
  1,2
)
insert into aluno_curso(
  aluno_id,
  curso_id
) values (
  2,1
)