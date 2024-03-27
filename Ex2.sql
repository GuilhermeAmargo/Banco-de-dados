CREATE TABLE cursos (
    id_curso serial PRIMARY KEY,
    nome_curso varchar (50)
)

CREATE TABLE alunos (
    id_aluno serial PRIMARY KEY,
    nome_aluno varchar (50),
    data_nascimento date
)

CREATE TABLE turmas (
    id_turma serial PRIMARY KEY,
    id_curso serial,
    CONSTRAINT fk_curso FOREIGN KEY (id_curso) REFERENCES cursos (id_curso)
    nome_professor varchar (50)
)

CREATE TABLE alunos_turmas (
    id_turma serial,
    CONSTRAINT fk_turma FOREIGN KEY (id_turma) REFERENCES turmas (id_turma)
    id_aluno serial,
    CONSTRAINT fk_aluno FOREIGN KEY (id_aluno) REFERENCES alunos (id_aluno)
)

SELECT * FROM alunos
SELECT * FROM turmas
SELECT * FROM cursos
SELECT * FROM alunos_turmas

INSERT INTO alunos (id_aluno, nome_aluno, data_nascimento) VALUES
(1, 'João da Silva', '1999-05-10'),
(2, 'Maria Souza', '2000-08-22'),
(3, 'Pedro Oliveira', '1998-04-15'),
(4, 'Ana Santos', '2001-11-30'),
(5, 'Luiz Pereira', '1997-07-05'),
(6, 'Carla Costa', '1999-09-18'),
(7, 'Márcio Ribeiro', '2002-02-25'),
(8, 'Fernanda Almeida', '1996-12-12'),
(9, 'Rafaela Mendes', '2003-06-08'),
(10, 'Diego Rocha', '1995-03-20');

INSERT INTO turmas (id_turma, id_curso, nome_professor) VALUES
(1, 101, 'Prof. Silva'),
(2, 102, 'Prof. Oliveira'),
(3, 103, 'Prof. Souza'),
(4, 104, 'Prof. Santos'),
(5, 105, 'Prof. Costa'),
(6, 106, 'Prof. Pereira'),
(7, 107, 'Prof. Ribeiro'),
(8, 108, 'Prof. Almeida'),
(9, 109, 'Prof. Mendes'),
(10, 110, 'Prof. Rocha');

INSERT INTO cursos (id_curso, nome_curso) VALUES
(101, 'Matemática'),
(102, 'História'),
(103, 'Ciências'),
(104, 'Geografia'),
(105, 'Inglês'),
(106, 'Educação Física'),
(107, 'Artes'),
(108, 'Biologia'),
(109, 'Química'),
(110, 'Física');

INSERT INTO alunos_turmas (id_turma, id_aluno) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10);