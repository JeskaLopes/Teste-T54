-- criar um banco de dados
CREATE DATABASE db_rhgeneration;

-- indica o banco de dados a ser utilizado/manipulado
USE db_rhgeneration;

CREATE TABLE tb_setor(
	id BIGINT auto_increment,
    nome_setor VARCHAR(255),
    PRIMARY KEY(id)
);

-- criação da tabela de funcionarios
CREATE TABLE tb_funcionarios(
	
	id BIGINT auto_increment,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    matricula INT,
    setor_id bigint,
    
    PRIMARY KEY(id),
    FOREIGN KEY (setor_id) REFERENCES tb_setor(id)
);
