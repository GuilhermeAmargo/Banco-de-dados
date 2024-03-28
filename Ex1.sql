CREATE TABLE livros (
    isbn SERIAL PRIMARY KEY,
    titulo varchar (50),
    editora varchar (50),
    ano serial
)

CREATE TABlE autores (
    id_autor SERIAL PRIMARY KEY,
    nome_autor varchar (50)
)

CREATE TABLE livros_autores (
    id_autor SERIAL,
    constraint fk_autor FOREIGN KEY (id_autor) REFERENCES autores (id_autor),
    isbn serial,
    constraint fk_livros FOREIGN KEY (isbn) REFERENCES livros (isbn)
)

SELECT * FROM livros
SELECT * FROM autores
SELECT * FROM livros_autores

INSERT INTO livros (isbn,titulo,editora,ano) VALUES
('27','To Kill a Mockingbird','HarperCollins', 1960),
('14','1984','Penguin Books', 1949),
('56','Pride and Prejudice','Vintage Classics', 1813),
('89','The Hobbit','Houghton Mifflin Harcourt', 1937),
('32','The Catcher in the Rye','Little, Brown and Company', 1951),
('71','The Great Gatsby','Scribner', 1925),
('45','To the Lighthouse','Harcourt Brace Jovanovich', 1927),
('23','Jane Eyre','Signet Classics', 1847),
('68','The Picture of Dorian Gray','Penguin Classics', 1890),
('95','A Game of Thrones','Bantam Spectra', 1996);

INSERT INTO autores (id_autor,nome_autor) VALUES
(1, 'Harper Lee'),
(2, 'George Orwell'),
(3, 'Jane Austen'),
(4, 'J.R.R. Tolkien'),
(5, 'J.D. Salinger'),
(6, 'F. Scott Fitzgerald'),
(7, 'Virginia Woolf'),
(8, 'Charlotte Brontë'),
(9, 'Oscar Wilde'),
(10, 'George R.R. Martin');

INSERT INTO livros_autores (id_autor,isbn) VALUES
(1, '27'), 
(2, '14'), 
(3, '56'), 
(4, '89'),
(5, '32'),
(6, '71'), 
(7, '45'), 
(8, '23'), 
(9, '68'), 
(10, '95');

-- Listar todos os livros e seus autores.
SELECT livros.titulo, autores.nome_autor FROM (livros natural inner join livros_autores) inner join autores using (id_autor)

-- Encontrar todos os livros escritos por um autor específico.
SELECT livros.titulo FROM (livros natural inner join livros_autores) inner join autores using (id_autor)
where nome_autor = 'George Orwell'

-- Encontrar todos os autores que escreveram um livro específico.
SELECT nome_autor FROM (autores natural inner join livros_autores) inner join livros using (isbn)
where titulo = 'The Hobbit'