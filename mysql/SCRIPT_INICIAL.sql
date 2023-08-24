# DROP DATABASE goservice_db;

CREATE DATABASE goservice_db;
USE goservice_db;

INSERT INTO usuarios (dtype, nome, email, perfil, senha, habilitado)
VALUE ( 
	"Administrador",
	"Rafael Morais",
    "rafael@email.com",
    "ADMIN",
    "$2a$10$r3r9V682sIhE/61jZjqkauT.08pxrBx.GE1T.yEogN5r8Ly2S8eTK",
    1
); # 123456

SELECT * FROM usuarios;

update usuarios set habilitado = 0 where id in (3, 4);