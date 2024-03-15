CREATE TABLE  Funcionarios (
	id_func SERIAL PRIMARY KEY,
	nome_func VARCHAR(100),
	data_admissao date
)

SELECT * FROM funcionarios

CREATE TABLE Projetos (
	id_projeto SERIAL PRIMARY KEY,
	nome_projeto VARCHAR(250),
	descricao text 
)

SELECT * FROM projetos

CREATE TABLE funcionario_projetos (
 	id_func int,
	CONSTRAINT fk_func  FOREIGN KEY (id_func) REFERENCES funcionarios (id_func),
	id_projeto int,
	CONSTRAINT fk_proj  FOREIGN KEY (id_projeto) REFERENCES projetos (id_projeto)
)
SELECT * FROM funcionarios_projetos

ALTER TABLE funcionario_projetos RENAME TO funcionarios_projetos