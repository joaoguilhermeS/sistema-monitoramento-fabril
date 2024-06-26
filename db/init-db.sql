SET FOREIGN_KEY_CHECKS = 0;

-- DROP TABLE IF EXISTS INFO_PRODUTIVIDADE;
-- DROP TABLE IF EXISTS OBSERVACOES;
-- DROP TABLE IF EXISTS PRODUCAO;
-- DROP TABLE IF EXISTS VPS;
DROP TABLE IF EXISTS MANUTENCAO;
-- DROP TABLE IF EXISTS DESENVOLVEDOR;
-- DROP TABLE IF EXISTS DISPOSITIVOS;
-- DROP TABLE IF EXISTS CAMERA;
-- DROP TABLE IF EXISTS SENSOR;
-- DROP TABLE IF EXISTS ALARME;
-- DROP TABLE IF EXISTS USUARIO;

SET FOREIGN_KEY_CHECKS = 1;

-- CREATE TABLE USUARIO (
--     matricula INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(255),
--     senha VARCHAR(255),
--     usuario VARCHAR(255),
--     cpf BIGINT
-- );

-- CREATE TABLE INFO_PRODUTIVIDADE (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     data_produtividade TIMESTAMP,
--     lista_de_produtividade TEXT,
--     matricula INT NOT NULL,
--     FOREIGN KEY (matricula) REFERENCES USUARIO(matricula)
-- );

-- CREATE TABLE OBSERVACOES (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     data_observacoes TIMESTAMP,
--     conteudo TEXT,
--     matricula INT NOT NULL,
--     FOREIGN KEY (matricula) REFERENCES USUARIO(matricula)
-- );

-- CREATE TABLE PRODUCAO (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     tipo INTEGER,
--     data_producao TIMESTAMP,
--     quantidade INTEGER,
--     matricula INT NOT NULL,
--     FOREIGN KEY (matricula) REFERENCES USUARIO(matricula)
-- );

-- CREATE TABLE VPS (
--     ip VARCHAR(255) PRIMARY KEY,
--     root_senha VARCHAR(255),
--     id_rsa VARCHAR(255) UNIQUE
-- );

CREATE TABLE MANUTENCAO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_de_manuntencao TIMESTAMP,
    descricao VARCHAR(255),
    tipo INT NOT NULL,
    id_rsa VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_rsa) REFERENCES VPS(id_rsa)
);

-- CREATE TABLE DESENVOLVEDOR (
--     id_rsa VARCHAR(255) NOT NULL,
--     matricula INTEGER,
--     PRIMARY KEY (id_rsa, matricula),
--     FOREIGN KEY (matricula) REFERENCES USUARIO(matricula)
-- );

-- CREATE TABLE DISPOSITIVOS (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     thresholds INTEGER,
--     nome VARCHAR(255),
--     matricula INT NOT NULL,
--     FOREIGN KEY (matricula) REFERENCES USUARIO(matricula)
-- );

-- CREATE TABLE CAMERA (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     ip VARCHAR(255),
--     id_ext INTEGER,
--     FOREIGN KEY (id_ext) REFERENCES DISPOSITIVOS(id)
-- );

-- CREATE TABLE SENSOR (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     ip VARCHAR(255),
--     unidade VARCHAR(255),
--     valor FLOAT,
--     id_ext INT NOT NULL,
--     FOREIGN KEY (id_ext) REFERENCES DISPOSITIVOS(id)
-- );

-- CREATE TABLE ALARME (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     data_do_alarme TIMESTAMP,
--     tipo VARCHAR(255),
--     texto VARCHAR(255),
--     id_dispositivo INT NOT NULL,
--     FOREIGN KEY (id_dispositivo) REFERENCES DISPOSITIVOS(id)
-- );
