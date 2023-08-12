CREATE DATABASE IF NOT EXISTS biblioteca_isa;
USE biblioteca_isa;

-- Tabela Livro
CREATE TABLE `Livro` (
  `ID` INT PRIMARY KEY,
  `Titulo` VARCHAR(255),
  `Genero` VARCHAR(100),
  `DataPublicacao` INT,
  `ExemplaresDisponiveis` INT,
  `EditoraID` INT
);

-- Tabela Autor
CREATE TABLE `Autor` (
  `ID` INT PRIMARY KEY,
  `Nome` VARCHAR(100),
  `DataNascimento` DATE,
  `Pais` VARCHAR(100),
  `Titulos` INT
);

-- Tabela Editora 
CREATE TABLE `Editora` (
  `ID` INT PRIMARY KEY,
  `Nome` VARCHAR(100),
  `Endereco` VARCHAR(255),
  `Telefone` VARCHAR(20),
  `Email` VARCHAR(255)
  );

-- Tabela RenovacaoeReserva
CREATE TABLE `RenovacaoeReserva` (
  `ID` INT PRIMARY KEY,
  `LivroID` INT,
  `UsuarioID` INT,
  `DataEmprestimo` DATE,
  `DataDevolucao` DATE
);

-- Tabela Usuario
CREATE TABLE `Usuario` (
  `ID` INT PRIMARY KEY,
  `Nome` VARCHAR(100),
  `Endereco` VARCHAR(255),
  `Telefone` VARCHAR(20),
  `Email` VARCHAR(255),
  `Senha` VARCHAR(100)
);

ALTER TABLE `Livro` ADD FOREIGN KEY (`EditoraID`) REFERENCES `Editora` (`ID`);

ALTER TABLE `Autor` ADD FOREIGN KEY (`Titulos`) REFERENCES `Livro` (`ID`);

ALTER TABLE `RenovacaoeReserva` ADD FOREIGN KEY (`LivroID`) REFERENCES `Livro` (`ID`);

ALTER TABLE `RenovacaoeReserva` ADD FOREIGN KEY (`UsuarioID`) REFERENCES `Usuario` (`ID`);
