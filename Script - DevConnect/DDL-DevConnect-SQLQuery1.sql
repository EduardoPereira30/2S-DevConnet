--DDL

CREATE DATABASE bd_DevConnect;

USE bd_DevConnect;

CREATE TABLE tb_usuario(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome_usuario	NVARCHAR(40)	NOT NULL,
	nome_completo	NVARCHAR(255)	NOT NULL,
	email			NVARCHAR(40)	NOT NULL,
	senha			NVARCHAR(50)	NOT NULL,
	foto_perfil_url NVARCHAR(150)	NULL
);
go

SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao(
	id INT IDENTITY(1,1) PRIMARY KEY,
	destrição NVARCHAR(255)		NOT NULL,
	imagem_url NVARCHAR(150)	NULL,
	data_publi DATE,
	id_usuario INT FOREIGN KEY REFERENCES tb_usuario(id)

);
go

SELECT * FROM tb_publicacao;

CREATE TABLE tb_seguidor(
	id_usuario_segui INT NOT NULL,
	id_usuario_seguindo INT NOT NULL,
	PRIMARY KEY (id_usuario_seguindo,id_usuario_segui)

);
go

SELECT * FROM tb_seguidor;


CREATE TABLE tb_curtida (
	id_usuario		INT FOREIGN KEY REFERENCES tb_usuario(id),
	id_publicacao	INT FOREIGN KEY REFERENCES tb_publicacao(id)

)
go

SELECT * FROM tb_curtida;


CREATE TABLE tb_comentario(
	id INT IDENTITY(1,1) PRIMARY KEY,
	texto NVARCHAR(255)		NOT NULL,
	data_comentario DATE ,
	id_comentario INT FOREIGN KEY REFERENCES tb_publicacao(id),
	id_usuario INT FOREIGN KEY REFERENCES tb_publicacao(id),
)
go

SELECT * FROM tb_comentario;