CREATE TABLE funcionarios (
    id_funcionario serial PRIMARY KEY,
    nome_funcionario varchar (50),
    data_admissao date,
    cargo varchar (50)
)

CREATE TABLE departamentos (
    id_departamento serial PRIMARY KEY,
    id_gerente serial,
    constraint fk_gerente FOREIGN KEY (id_gerente) REFERENCES gerentes (id_gerente),
    nome_departamento varchar (50)
)

CREATE TABLE gerentes (
    id_gerente serial PRIMARY KEY,
    nome_gerente varchar (50)
)

INSERT INTO funcionarios (id_funcionario, nome_funcionario, data_admissao, cargo) VALUES
(1, 'Ana Beatriz', '2023-01-10', 'Analista de Sistemas'),
(2, 'Carlos Silva', '2023-02-15', 'Desenvolvedor Backend'),
(3, 'Débora Gomes', '2023-03-20', 'Desenvolvedora Full Stack'),
(4, 'Eduardo Rocha', '2023-04-25', 'Analista de Segurança'),
(5, 'Fernanda Lima', '2023-05-30', 'Administrador de Banco de Dados'),
(6, 'Gustavo Henrique', '2023-06-05', 'Analista de Dados'),
(7, 'Helena Martins', '2023-07-10', 'Engenheira de Redes'),
(8, 'Igor Santos', '2023-08-15', 'Suporte Técnico'),
(9, 'Júlia Carvalho', '2023-09-20', 'Engenheira de Software'),
(10, 'Lucas Pereira', '2023-10-25', 'Analista de Sistemas');

INSERT INTO departamentos (id_departamento, id_gerente, nome_departamento) VALUES
(1, 101, 'Vendas'),
(2, 102, 'Marketing'),
(3, 103, 'Finanças'),
(4, 104, 'Recursos Humanos'),
(5, 105, 'Desenvolvimento'),
(6, 106, 'Suporte Técnico'),
(7, 107, 'Produção'),
(8, 108, 'Logística'),
(9, 109, 'Qualidade'),
(10, 110, 'TI');

INSERT INTO gerentes (id_gerente, nome_gerente) VALUES
(1, 'João da Silva'),
(2, 'Maria Oliveira'),
(3, 'Pedro Santos'),
(4, 'Ana Souza'),
(5, 'Carlos Pereira'),
(6, 'Juliana Lima'),
(7, 'Rafael Fernandes'),
(8, 'Isabela Costa'),
(9, 'Lucas Oliveira'),
(10, 'Mariana Silva');
