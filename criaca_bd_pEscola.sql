create table aluno(
    ra number(5),
    nome varchar2(100),
    data_matricula date
);

create table diciplina(
    cod_disc number(5) primary key,
    nome_disc varchar2(50) not null,
    carga_horaria number(3)
);

create table professor(
    cod_prof number(5) primary key,
    nome_prof varchar2(100) not null,
    dt_nascimento date,
    sexo char(1) check (sexo ='M' or sexo ='F' or sexo ='O'),
    cpf varchar(11) unique,
    cod_disc number(5) references diciplina(cod_disc)
);