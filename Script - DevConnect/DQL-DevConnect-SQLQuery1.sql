--DQL
USE bd_DevConnect

SELECT MAX(id) AS ultimo_usuario, nome_usuario
FROM  tb_usuario 
GROUP BY nome_usuario
ORDER BY ultimo_usuario;