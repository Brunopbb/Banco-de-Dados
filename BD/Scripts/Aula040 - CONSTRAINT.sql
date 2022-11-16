

CREATE DATABASE DEVDOJO
GO

USE DEVDOJO
GO



-- FUNCIONARIO -> DEPARTAMENTO

DROP TABLE IF EXISTS FUNCIONARIO
DROP TABLE IF EXISTS DEPARTAMENTO

GO

CREATE TABLE DEPARTAMENTO(

    COD_DEPARTAMENTO VARCHAR(10) PRIMARY KEY,
    DESC_DEPARTAMENTO VARCHAR(100) NOT NULL


)

CREATE TABLE FUNCIONARIO(

    ID_FUNCIONARIO INT IDENTITY(1000, 1),
    COD_DEPARTAMENTO VARCHAR(10), --FOREIGN KEY REFERENCES DEPARTAMENTO (COD_DEPARTAMENTO),

    NOME VARCHAR(100) NOT NULL,
    SOBRENOME VARCHAR(100) NOT NULL,
    DATA_CRIACAO DATETIME DEFAULT GETDATE(),
    DATA_NASCIMENTO DATE NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    TELEFONE VARCHAR(9) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,

    CONSTRAINT PK_FUNCIONARIO PRIMARY KEY (ID_FUNCIONARIO),
    CONSTRAINT CHECA_NASCIMENTO CHECK(DATA_NASCIMENTO >= '1940-01-01'),

    CONSTRAINT FK_COD_DEPARTAMENTO FOREIGN KEY (COD_DEPARTAMENTO)
    REFERENCES DEPARTAMENTO (COD_DEPARTAMENTO)


)

GO


INSERT INTO DEPARTAMENTO (COD_DEPARTAMENTO, DESC_DEPARTAMENTO)
VALUES ('DRH', 'DEPARTAMENTO DE RECURSOS HUMANOS'),
       ('TI', 'DEPARTAMENTO DE DESENVOLVIMENTO')
GO


INSERT INTO FUNCIONARIO (COD_DEPARTAMENTO, NOME, SOBRENOME, DATA_NASCIMENTO, CPF, TELEFONE, EMAIL)
VALUES ('DRH','BRUNO', 'ALMEIDA', '1999-02-02', '12689070499', '998161905', 'ALMEIDABRUNO99@GMAIL.COM'),
       ('TI', 'ANSELMO', 'ALMEIDA', '1960-06-06', '123456789', '3363677', 'ANSELMOLUIZ@HOTMAIL.COM')    
GO

SELECT * FROM FUNCIONARIO
SELECT * FROM DEPARTAMENTO
GO

SELECT * FROM FUNCIONARIO WHERE COD_DEPARTAMENTO = 'TI'


