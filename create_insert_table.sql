--Criando tabela de FUNCIONARIO e inserindo dados

CREATE TABLE funcionario(
matricula NVARCHAR(7) NOT NULL,
cod_departamento NVARCHAR(5) NOT NULL,
cod_cargo NVARCHAR(4) NOT NULL,
nome NVARCHAR(30)  NOT NULL,
sexo NCHAR(1) NOT NULL,
telefone NVARCHAR(11) NOT NULL,
cpf NVARCHAR(11) NOT NULL,
data_admissao DATE NOT NULL,
PRIMARY KEY(matricula)
);
INSERT INTO funcionario
  VALUES
   ('','','','','','','',''),
   ('','','','','','','',''),
   ('','','','','','','','');

--Criando tabela DEPARTAMENTO CALL CENTER e inserindo dados
CREATE TABLE departamento(
  cod_departamento  NVARCHAR(5) NOT NULL,
  nome_departamento NVARCHAR(12) NOT NULL 
);
INSERT INTO departamento
    VALUES
   ('',''),
   ('',''),
   ('','');

--Criando tabela CARGO CALL CENTER e inserindo dados
CREATE TABLE cargo(
  cod_cargo NVARCHAR(4) NOT NULL,
  nome_cargo NVARCHAR(12) NOT NULL
);
INSERT INTO cargo
    VALUES
   ('',''),
   ('',''),
   ('',''); 

--Criando tabela GERENTE e inserindo dados
CREATE TABLE gerente(
gratificacao FLOAT(8) NOT NULL,
cod_cargo NCHAR(11) NOT NULL,
cod_departamento  NVARCHAR(4) NOT NULL,
matricula NVARCHAR(7) NOT NULL,
salario FLOAT(8) NOT NULL,
  PRIMARY KEY () 
);
INSERT INTO gerente
  VALUES
   ('','','','',''),
   ('','','','',''),
   ('','','','','');

--Criando tabela COORDENADOR CALL CENTER e inserindo dados
CREATE TABLE coordenador(
gratificacao FLOAT(8) NOT NULL,
cod_cargo NCHAR(11) NOT NULL,
cod_departamento  NVARCHAR(4) NOT NULL,
matricula NVARCHAR(7) NOT NULL,
salario FLOAT(8) NOT NULL,
 PRIMARY KEY ()
);
INSERT INTO coordenador
    VALUES
   ('','','','',''),
   ('','','','',''),
   ('','','','','');


--Criando tabelas ANALISTA DE CALL CENTER e inserindo dados

CREATE TABLE analista(
especialidade NVARCHAR(12) NOT NULL,
cod_cargo NCHAR(11) NOT NULL,
cod_departamento  NVARCHAR(4) NOT NULL,
matricula NVARCHAR(7) NOT NULL,
salario FLOAT(8) NOT NULL,
  PRIMARY KEY()
);
INSERT INTO analista
    VALUES
   ('','','','',''),
   ('','','','',''),
   ('','','','','');

--Criando tabelas ATENDENTE DE CALL CENTER e inserindo dados
CREATE TABLE atendente(
  hora_extra FLOAT(8) NOT NULL,
  cod_cargo NCHAR(11) NOT NULL,
  cod_departamento  NVARCHAR(4) NOT NULL,
  matricula NVARCHAR(7) NOT NULL,
  salario FLOAT(8) NOT NULL ,
  PRIMARY KEY()
);
INSERT INTO atendente
    VALUES
   ('','','','',''),
   ('','','','',''),
   ('','','','','');


--Criando tabelas CLIENTE e inserindo dados
CREATE TABLE cliente(
  cpf NVARCHAR(11) NOT NULL,
  cod_chamada INT(7) NOT NULL,
  nome NVARCHAR(30)  NOT NULL,
  sexo NCHAR(1) NOT NULL,
  email NVARCHAR NOT NULL,
  cep NVARCHAR(11) NOT NULL,
  telefone NVARCHAR (3) NOT NULL,
  cidade NVARCHAR(30) NOT NULL,
  PRIMARY KEY()
);
INSERT INTO cliente
    VALUES
   ('','','','','','','',''),
   ('','','','','','','',''),
   ('','','','','','','','');

--Criando tabelas RECLAMAÇOES e inserindo dados
CREATE TABLE reclamacoes(
  cod_chamada INT(7) NOT NULL,
  cod_departamento  NVARCHAR(5) NOT NULL,
  id_cliente INT(7) NOT NULL,
  matricula INT(7) NOT NULL,
  protocolo INT(7) NOT NULL,
  PRIMARY KEY()
);
INSERT INTO reclamacoes
    VALUES
   ('','','','',''),
   ('','','','',''),
   ('','','','','');

-- 
-- 
-- 
-- 
-- 
-- 
-- 
--
--
--
-- 
--