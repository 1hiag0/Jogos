CREATE DATABASE jogos;
USE jogos;

CREATE TABLE IF NOT EXISTS generos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS jogos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    desenvolvedora VARCHAR(100) NOT NULL,
    sinopse TEXT NOT NULL,
    genero_id INT NOT NULL,
    CONSTRAINT fk_jogos_generos FOREIGN KEY (genero_id) REFERENCES generos(id) 
);