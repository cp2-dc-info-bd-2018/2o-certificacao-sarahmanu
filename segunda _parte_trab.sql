use Faculdade; 

insert into Departamento(iddep, nome) Values
(1, 'Exatas'),
(2, 'Exatas2'),
(3, 'Humanas'),
(4, 'Humanas2'),
(5, 'Biológicas');

insert into Curso (idcurso, iddep) Values
(1, 3),
(2, 4),
(3, 1),
(4, 5),
(5, 2);

insert into Sala (idsala) Values
(1),
(2),
(3),
(4),
(5);


insert into Disciplina (iddisc, carg_h, idsala) Values
(1, 30, 3),
(2, 40, 1),
(3, 20, 5),
(4, 60, 2),
(5, 25, 4);

insert into curso_disciplina (idcurso, iddisc) Values
(5, 3),
(3, 4),
(1, 2),
(3, 1),
(2, 5);

insert into professor (idprof, CPFprof, telefone, nome, iddep, iddisc) Values
(1, 123, 1254, 'Ygor', 1, 2),
(2, 456, 3236, 'Matheus', 2, 1),
(3, 789, 1452, 'Glaucia', 3, 5),
(4, 987, 6589, 'Vanessa', 4, 3),
(5, 654, 5478, 'Leticia', 5, 4);
  
insert into Ano_letivo (idano) Values
(1),
(2),
(3),
(4),
(5);

insert into Turma (idturm, idano) Values
(1, 5),
(2, 4),
(3, 3),
(4, 2),
(5, 1);

insert into Turma_Disci (idturm, iddisc) Values
(1, 4),
(2, 5),
(3, 2),
(4, 1),
(5, 3);

insert into Trabalho (idtrab, data_entrega) Values
(1, '05-04-2018'),
(2, '07-06-2018'),
(3, '07-06-2018'),
(4, '09-10-2018'),
(5, '01-01-2019');

insert into Aluno (idaluno, nome, idturm) Values
(1, 'Ridículo', 3),
(2, 'Roger', 4),
(3, 'Beltrano', 1),
(4, 'Ciclano', 5),
(5, 'Fulano', 2);

insert into Aluno_trab (idaluno, idtrab) Values
(1, 2),
(2, 3),
(3, 5),
(4, 1),
(5, 4);

insert into Nota (idnota, idaluno) Values
(1, 4),
(2, 5),
(3, 1),
(4, 2),
(5, 3);