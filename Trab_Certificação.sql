use Faculdade


create table Departamento
(
iddep int,
nome varchar (50),
 primary key (iddep)
);

create table Curso
(
idcurso int ,
iddep int not null
primary key (idcurso)
foreign key (iddep) references Departamento (iddep)
);

create table Sala
(
idsala int
primary key (idsala)
);

create table Disciplina
(
iddisc int,
carg_h time,
idsala int not null,
CPFprof int
primary key (iddisc)
foreign key (idsala) references Sala (idsala)
);

create table curso_disciplina
(
idcurso int,
iddisc int
primary key (idcurso , iddisc)
foreign key (idcurso) references Curso (idcurso),
foreign key (iddisc) references Disciplina (iddisc)
);

create table professor 
(
CPFprof int,
telefone varchar(30),
nome varchar(50),
iddep int not null,
iddisc int not null
primary key (CPFprof) 
foreign key (iddep) references Departamento (iddep),
foreign key (iddisc) references Disciplina (iddisc)
);

create table Ano_letivo
(
idano int
primary key (idano)
);

create table Turma
(
idturm int,
idano int not null
primary key (idturm)
foreign key (idano) references Ano_letivo (idano)
);

create table Turma_Disci
(
idturm int not null,
iddisc int not null
primary key (idturm, iddisc)
foreign key (idturm) references Turma (idturm),
foreign key (iddisc) references Disciplina (iddisc)
);

create table Trabalho
(
idtrab int,
data_entrega date 
primary key (idtrab)
);

create table Aluno
(
idaluno int,
nome varchar(50),
idturm int not null
primary key (idaluno)
foreign key (idturm) references Turma (idturm)
);

create table Aluno_trab
(
idaluno int not null,
idtrab int not null
primary key (idaluno, idtrab)
foreign key (idaluno) references Aluno (idaluno),
foreign key (idtrab) references Trabalho (idtrab)
);

create table Nota
(
idnota int,
idaluno int not null
primary key (idnota) 
foreign key (idaluno) references Aluno (idaluno)
);