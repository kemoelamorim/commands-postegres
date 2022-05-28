create table aluno(
  id integer primary key,
  nome varchar(255) not null
);

insert into aluno (id, nome)
values (1, 'Kemoel');

insert into aluno (id, nome)
values (2, 'Thmiris');

create table curso(
  id integer primary key,
  nome varchar(255) not null
)

insert into curso(id, nome)
values(1, 'HTML')

insert into curso(id, nome)
values(2, 'Java')

create table aluno_curso(
  aluno_id integer,
  curso_id integer,
  primary key (aluno_id, curso_id),

  foreign key (aluno_id) references aluno (id),
  foreign key (curso_id) references curso (id)
)

select *
  from aluno
  join aluno_curso on aluno_curso.aluno_id = aluno.id
  join curso       on curso.id             = aluno_curso.curso_id