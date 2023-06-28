--Criando tabela de FUNCIONARIO e inserindo dados

CREATE TABLE funcionario(
matricula VARCHAR(7) NOT NULL,
cod_departamento VARCHAR(5) NOT NULL,
cod_cargo VARCHAR(5) NOT NULL,
nome VARCHAR(30)  NOT NULL,
sexo CHAR(1) NOT NULL,
telefone VARCHAR(11) NOT NULL,
cpf VARCHAR(11) NOT NULL,
data_admissao DATE NOT NULL,
PRIMARY KEY(matricula)
);
INSERT INTO funcionario
  VALUES
('0116810', 'DEP01', 'CGO01', 'José Silva', 'M', '987654321', '12345678901', '2022-01-01'),
('2232238', 'DEP02', 'CGO01', 'Ana Santos', 'F', '876543210', '23456789012', '2022-02-01'),
('5423453', 'DEP03', 'CGO01', 'Pedro Oliveira', 'M', '765432109', '34567890123', '2022-03-01'),
('4569334', 'DEP01', 'CGO02', 'Maria Costa', 'F', '654321098', '45678901234', '2022-04-01'),
('3956126', 'DEP02', 'CGO02', 'Carlos Mendes', 'M', '543210987', '56789012345', '2022-05-01'),
('6123665', 'DEP03', 'CGO02', 'Laura Ferreira', 'F', '432109876', '67890123456', '2022-06-01'),
('1456237', 'DEP01', 'CGO03', 'Ana Silva', 'F', '987654321', '12345678901', '2022-01-01'),
('9876543', 'DEP01', 'CGO03', 'Pedro Santos', 'M', '876543210', '23456789012', '2022-02-01'),
('7894560', 'DEP02', 'CGO03', 'Carlos Mendes', 'M', '654321098', '45678901234', '2022-04-01'),
('8567234', 'DEP02', 'CGO03', 'Laura Ferreira', 'F', '543210987', '56789012345', '2022-05-01'),
('8903412', 'DEP03', 'CGO03', 'Gabriela Santos', 'F', '321098765', '78901234567', '2022-07-01'),
('5678901', 'DEP03', 'CGO03', 'Julio Oliveira', 'M', '210987654', '89012345678', '2022-08-01'),
('1234567', 'DEP03', 'CGO04', 'João Silva', 'M', '987654321', '12345678901', '2022-01-15'),
('2345678', 'DEP03', 'CGO04', 'Maria Santos', 'F', '876543210', '23456789012', '2021-05-10'),
('3456789', 'DEP03', 'CGO04', 'Pedro Souza', 'M', '765432109', '34567890123', '2023-03-20'),
('4567890', 'DEP03', 'CGO04', 'Carlos Santos', 'M', '654321098', '45678901234', '2023-06-15'),
('5678531', 'DEP03', 'CGO04', 'Juliana Lima', 'F', '543210987', '56789012345', '2023-06-20'),
('6789012', 'DEP03', 'CGO04', 'Pedro Rocha', 'M', '432109876', '67890123456', '2023-06-25'),
('7890123', 'DEP03', 'CGO04', 'Camila Costa', 'F', '321098765', '78901234567', '2023-06-27'),
('8901234', 'DEP03', 'CGO04', 'Rafaela Oliveira', 'F', '210987654', '89012345678', '2023-06-30'),
('9012345', 'DEP03', 'CGO04', 'Lucas Souza', 'M', '109876543', '90123456789', '2023-07-05');

--Criando tabela DEPARTAMENTO CALL CENTER e inserindo dados
CREATE TABLE departamento(
  cod_departamento  VARCHAR(5) NOT NULL,
  nome_departamento VARCHAR(12) NOT NULL 
);
INSERT INTO departamento
    VALUES
('DEP01', 'Vendas'),
('DEP02', 'Cobraca'),
('DEP03', 'Helpdesk');

--Criando tabela CARGO CALL CENTER e inserindo dados
CREATE TABLE cargo(
  cod_cargo VARCHAR(5) NOT NULL,
  nome_cargo VARCHAR(12) NOT NULL
);
INSERT INTO cargo
    VALUES
('CGO01', 'Gerente'),
('CGO02', 'Coordenador'),
('CGO03', 'Analista'),
('CGO04', 'Atendente');

--Criando tabela GERENTE e inserindo dados
CREATE TABLE gerente(
salario FLOAT(8) NOT NULL,
cod_cargo CHAR(5) NOT NULL,
cod_departamento  VARCHAR(5) NOT NULL,
matricula VARCHAR(7) NOT NULL,
vale_alimentacao FLOAT(8) NOT NULL,
  PRIMARY KEY (matricula) 
);
INSERT INTO gerente
  VALUES
  (8000.00, 'CGO01', 'DEP01', '0116810', 567.35),
  (9000.00, 'CGO01', 'DEP02', '2232238', 467.25),
  (7000.00, 'CGO01', 'DEP03', '5423453', 367.15);

--Criando tabela COORDENADOR CALL CENTER e inserindo dados
CREATE TABLE coordenador(
gratificacao FLOAT(8) NOT NULL,
cod_cargo CHAR(5) NOT NULL,
cod_departamento  VARCHAR(5) NOT NULL,
matricula VARCHAR(7) NOT NULL,
salario FLOAT(8) NOT NULL,
 PRIMARY KEY (matricula)
);
INSERT INTO coordenador
    VALUES
(1000.00, 'CGO02', 'DEP01', '4569334', 667.35),
(1500.00, 'CGO02', 'DEP02', '3956126', 867.25),
(1200.00, 'CGO02', 'DEP03', '6123665', 767.15);


--Criando tabelas ANALISTA DE CALL CENTER e inserindo dados

CREATE TABLE analista(
especialidade VARCHAR(30) NOT NULL,
cod_cargo CHAR(5) NOT NULL,
cod_departamento  VARCHAR(5) NOT NULL,
matricula VARCHAR(7) NOT NULL,
salario FLOAT(8) NOT NULL,
  PRIMARY KEY(matricula)
);
INSERT INTO analista
    VALUES
('Sistemas Jr.', 'CGO03', 'DEP01', '1456237', 4000.35),
('Sistemas Sr.', 'CGO03', 'DEP01', '9876543', 4000.35),
('Infraestrutura Sr.', 'CGO03', 'DEP02', '7894560', 4500.87),
('Infraestrutura Jr.', 'CGO03', 'DEP02', '8567234', 4500.87),
('Infraestrutura Sr.', 'CGO03', 'DEP03', '8903412', 3500.65),
('Sistemas Sr.', 'CGO03', 'DEP03', '5678901', 3500.65);

--Criando tabelas ATENDENTE DE CALL CENTER e inserindo dados
CREATE TABLE atendente(
  hora_extra FLOAT(8) NOT NULL,
  cod_cargo CHAR(5) NOT NULL,
  cod_departamento  VARCHAR(5) NOT NULL,
  matricula VARCHAR(7) NOT NULL,
  salario FLOAT(8) NOT NULL ,
  PRIMARY KEY(matricula)
);
INSERT INTO atendente
    VALUES
(100.00, 'CGO04', 'DEP01', '1234567', 2800.00),
(100.00, 'CGO04', 'DEP01', '2453671', 2800.00),
(120.00, 'CGO04', 'DEP02', '2345678', 2300.00),
(120.00, 'CGO04', 'DEP02', '3456789', 2300.00),
(130.00, 'CGO04', 'DEP03', '4567890', 2500.00),
(130.00, 'CGO04', 'DEP03', '5678531', 2500.00),
(130.00, 'CGO04', 'DEP03', '6789012', 2500.00),
(130.00, 'CGO04', 'DEP03', '7890123', 2500.00),
(130.00, 'CGO04', 'DEP03', '8901234', 2500.00),
(130.00, 'CGO04', 'DEP03', '9012345', 2500.00);

--Criando tabelas CLIENTE e inserindo dados
CREATE TABLE cliente(
  cpf_cliente VARCHAR(11) NOT NULL,
  cod_chamada CHAR(1) NOT NULL,
  nome VARCHAR(30)  NOT NULL,
  sexo CHAR(1) NOT NULL,
  email VARCHAR NOT NULL,
  cep VARCHAR(11) NOT NULL,
  telefone_cliente VARCHAR (11) NOT NULL,
  cidade VARCHAR(30) NOT NULL,
  PRIMARY KEY(cpf_cliente)
);
INSERT INTO cliente
    VALUES
('12345678901', 'A', 'Ana Silva', 'F', 'ana.silva@gmail.com', '12345678', '11987654321', 'Sao Paulo'),
('23456789012', 'A', 'Lucas Oliveira', 'M', 'lucas.oliveira@exemplo', '23456789', 
'21976543210', 'Rio de Janeiro'),
('34567890123', 'A', 'Sofia Santos', 'F', 'sofia.santos@exemplo', '34567890', '71965432109', 'Camacari'),
('98765432109', 'R', 'Laura Ferreira', 'F', 'laura.ferreira@example.com', '45678901', '11994321098', 'Sao Paulo'),
('87654321098', 'R', 'Gabriel Santos', 'M', 'gabriel.santos@example.com', '56789012', '21943210987', 'Rio de Janeiro'),
('76543210987', 'A', 'Carolina Oliveira', 'F', 'carolina.oliveira@example.com', '67890123', '7193219876', 'Salvador');

--Criando tabelas RECLAMAÇOES e inserindo dados
CREATE TABLE reclamacoes(
  cod_chamada CHAR(1) NOT NULL,
  cod_departamento  VARCHAR(5) NOT NULL,
  cpf_cliente VARCHAR(11) NOT NULL,
  matricula VARCHAR(7) NOT NULL,
  protocolo INT NOT NULL,
  telefone_cliente VARCHAR (11) NOT NULL,
  PRIMARY KEY(protocolo)
);
INSERT INTO reclamacoes
    VALUES
('A', 'DEP03', '12345678901', '4567890', 1000031,'11987654321'),
('A', 'DEP03', '23456789012', '5678901', 1000312,'21976543210'),
('R', 'DEP03', '87654321098', '6789012', 1003031,'21943210987'),
('A', 'DEP03', '76543210987', '7890123', 1005031,'7193219876'),
('R', 'DEP03' ,'98765432109', '8901234', 1002361,'11994321098'),
('A', 'DEP03' ,'34567890123', '9012345', 1044365,'71965432109');
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