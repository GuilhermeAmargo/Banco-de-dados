CREATE TABLE pacientes (
    id_paciente serial PRIMARY KEY,
    nome_paciente varchar (50),
    data_nascimento date
)

CREATE TABLE medicos (
    id_medico serial PRIMARY KEY,
    nome_medico varchar (50),
    especializacao varchar (50)
)

CREATE TABLE pacientes_medicos (
    id_paciente serial,
    constraint fk_paciente FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente)
    id_medico serial,
    constraint fk_medico FOREIGN KEY (id_medico) REFERENCES medicos (id_medico)
)

INSERT INTO pacientes (id_paciente, nome_paciente, data_nascimento) VALUES
(1, 'Ana Silva', '1985-04-12'),
(2, 'Bruno Martins', '1990-08-25'),
(3, 'Carla Gomes', '1975-02-03'),
(4, 'Daniel Rocha', '2000-11-15'),
(5, 'Eduarda Soares', '1995-05-21'),
(6, 'Felipe Nogueira', '1982-07-30'),
(7, 'Giovana Lopes', '2003-09-17'),
(8, 'Hélio Costa', '1969-12-01'),
(9, 'Igor Santos', '1988-03-22'),
(10, 'Juliana Pereira', '1992-10-05');

INSERT INTO medicos (id_medico, nome_medico, especializacao) VALUES
(1, 'Dr. Carlos Andrade', 'Cardiologia'),
(2, 'Dra. Beatriz Lemos', 'Dermatologia'),
(3, 'Dr. Eduardo Souza', 'Ortopedia'),
(4, 'Dra. Fernanda Oliveira', 'Pediatra'),
(5, 'Dr. Gabriel Costa', 'Neurologia'),
(6, 'Dra. Helena Cabral', 'Ginecologia'),
(7, 'Dr. Ícaro Martins', 'Oftalmologia'),
(8, 'Dra. Joana Silveira', 'Psiquiatria'),
(9, 'Dr. Leonardo Rocha', 'Clínico Geral'),
(10, 'Dra. Márcia Pereira', 'Endocrinologia');

INSERT INTO pacientes_medicos (id_paciente, id_medico) VALUES
(1, 3), 
(2, 5), 
(3, 2), 
(4, 10), 
(5, 7), 
(6, 1), 
(7, 4), 
(8, 9), 
(9, 6), 
(10, 8); 
