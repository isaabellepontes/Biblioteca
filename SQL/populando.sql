-- Populando Tabela Livro

INSERT INTO Livro (Titulo, Genero, DataPublicacao, ExemplaresDisponiveis)
VALUES
('Dom Casmuro', 'Romance', '1899', '3'),
('O Alienista', 'Ficcao', '1882', '3'),
('Ou istou ou aquilo', 'Infantil', '1964', '3'),
('Janela Magica: Cronicas', 'Ficcao', '1981', '3'),
('Clara dos Anjos', 'Ficcao', '1948', '3'),
('Cemiterio dos Vivos', 'Romance', '1919', '3'),
('Felicidade Clandestina', 'Ficcao Literaria', '1971', '3'),
('A hora da Estrela', 'Romance', '1977', '3'),
('Capitaes da Areia', 'Romance', '1937', '2'),
('Mar Morto', 'Ficcao', '1936', '4');

-- Populando Tabela Autor

INSERT INTO Autor (Nome, DatadeNascimento, Pais, Titulos)
VALUES
('Machado de Assis', '21-06-1839', 'Brasil', '2'),
('Cecilia Meireles', '07-11-1901', 'Brasil', '2'),
('Clarise Lispector', '10-12-1920', 'Brasil', '2'),
('Lima Barreto', '13-05-1881', 'Brasil', '2'),
('Jorge Leal Amado de Faria', '10-08-1912', 'Brasil', '2');

-- Populando Tabela Editora 

INSERT INTO Editora (Nome, Endereco, Telefone, Email)
VALUES
('Rocco', 'Rua dos passeios, Rio de Janeiro', '21-35252000', 'rocco@rocco.com.br'),
('Companhia das Letras',  'Rua bandeira Paulista, Sao Paulo', '11-37073500', 'cdl@gmail.com'),
('Aleph', 'Rua Bento Feitas, Sao Paulo', '11-37433202', 'marketing@editoraaleph.com.br'),
('Editora Saraiva', 'Av Paulista, Sao Paulo', '11-40033061', 'saceditorasaraiva@somoseducacao.com.br'),
('Arqueiro', 'Rua Funchal, Sao Paulo', '11-38684492', 'atendimento@editoraarqueiro.com.br');

-- Populando Tabela RenovacaoeReserva

INSERT INTO RenovacaoeReserva (livroId, UsuarioId, Dataemprestimo, Datadevolucao)
VALUES
(6,3, '2023-05-05', '2023-05-12'),
(7,5, '2023-04-01', '2023-04-08'),
(4,2, '2023-01-07', '2023-01-15'),
(9,1, '2023-04-17', '2023-04-25'),
(3,4, '2023-03-10', '2023-03-17');

-- Populando Tabela Usuario

INSERT INTO Usuario (nome, Endereco, Telefone, Email, Senha)
VALUES
('Ana Chaves', 'Rua das pedras: 14', '30333412', 'ana@ana.com', 'ana123'),
('Pedro Alves', 'Rua dos cedros:21', '30144417', 'pedro@pedro.com', 'pedro123'),
('Gabriel Lima', 'Rua das arvores:74', '999144513', 'gabriel@gabriel.com', 'gab123'),
('Amanda Costa', 'Rua dos passaros:13', '988255264', 'amanda@amanda.com', 'amanda10'),
('Vilma Pereira', 'Rua das framboesas:25', '997444556', 'vilma@vilma.com');
