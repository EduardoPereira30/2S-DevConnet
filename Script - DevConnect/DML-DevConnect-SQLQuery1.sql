--DML

USE bd_DevConnect;

INSERT INTO tb_usuario( nome_usuario ,nome_completo, email, senha,foto_perfil_url)
VALUES
	('EduardoP', 'Eduardo Pereira Silva', 'dudupererasilva@email.com','Senai@25','gsdiugfiuhdsfhiudshuusdhfiuh'),
	('CarlosH', 'Carlos Henrique', 'carloenrique@gmail.com', 'seilá123','igasigdijfjadskjjksjkgfjkjksjkjdgsad')


SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao(destrição,imagem_url,data_publi,id_usuario)
VALUES
	('eu amo essa musica','gsgfgdsfjsksdfjhshh','2025/10/02','1'),
	('essa cantora só canta pedrada','gfkgfkgfhgfhfjhhghg','2025/10/01','2');

SELECT * FROM tb_publicacao;

INSERT INTO tb_curtida(id_usuario,id_publicacao)
VALUES
	('1','2'),
	('2','1');

SELECT * FROM tb_curtida;

INSERT INTO tb_comentario(texto,data_comentario,id_comentario,id_usuario)
VALUES
	('é verdade','2025-10-03','1', '2'),
	('concordo conpletamente','2025-10-02','2','1');

	
SELECT * FROM tb_comentario;


INSERT INTO tb_curtida(id_usuario,id_publicacao)
VALUES
	( 1,2),
	( 2, 1);

	
SELECT * FROM tb_curtida;
