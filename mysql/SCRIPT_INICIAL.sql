CREATE DATABASE goservice_db;
USE goservice_db;

INSERT INTO usuarios (dtype, nome, email, perfil, senha, habilitado)
VALUE ( 
	"Administrador",
	"Rafael",
    "rafael@email.com",
    "ADMIN",
    "$2a$10$r3r9V682sIhE/61jZjqkauT.08pxrBx.GE1T.yEogN5r8Ly2S8eTK",
    1
); # 123456

SELECT * FROM usuarios;

UPDATE usuarios SET habilitado = 0 WHERE id IN (3, 4);

-- INSERT INTO servicos (categoria, descricao, nome) 
-- VALUES 
--     ('Limpeza', 'Serviço de limpeza residencial', 'Limpeza Residencial'),
--     ('Treinamento', 'Treinamento corporativo em liderança', 'Treinamento em Liderança'),
--     ('Saúde', 'Consulta médica de clínico geral', 'Consulta Clínico Geral'),
--     ('Desenvolvimento', 'Desenvolvimento de aplicativo móvel', 'Desenvolvimento de App'),
--     ('Design', 'Design de logotipo para empresas', 'Design de Logotipo'),
--     ('Limpeza', 'Limpeza de escritórios comerciais', 'Limpeza Comercial'),
--     ('Treinamento', 'Treinamento em habilidades de comunicação', 'Treinamento em Comunicação'),
--     ('Saúde', 'Sessão de fisioterapia para reabilitação', 'Fisioterapia de Reabilitação'),
--     ('Desenvolvimento', 'Desenvolvimento de site institucional', 'Desenvolvimento de Site Institucional'),
--     ('Design', 'Design de interface de usuário para aplicativos', 'Design de Interface de Aplicativo');
    
SELECT * FROM servicos;
SELECT * FROM prestadores_servicos;
    
INSERT INTO prestadores_servicos (servico_id, prestador_id)
VALUES
    (1, 4),
    (1, 5),
    (3, 4),
    (3, 5),
    (4, 4),
    (4, 5),
    (5, 4),
    (5, 5),
    (6, 4),
    (6, 5),
    (7, 4),
    (7, 5),
    (8, 4),
    (8, 5),
    (9, 4),
    (9, 5),
    (10, 4),
    (10, 5);
    
SELECT * 
FROM servicos AS s 
JOIN prestadores_servicos AS ps ON s.id = ps.servico_id 
JOIN usuarios AS u ON u.id = ps.prestador_id 
WHERE u.id = 5; 
    