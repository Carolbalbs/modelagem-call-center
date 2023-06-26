
--FUNCIONARIO 
matricula NVARCHAR(7) NOT NULL
cod_departamento NVARCHAR(5) NOT NULL
cod_cargo NVARCHAR(4) NOT NULL
nome NVARCHAR(30)  NOT NULL
sexo NCHAR(1) NOT NULL
telefone NVARCHAR(11) NOT NULL
cpf NVARCHAR(11) NOT NULL
data_admissao DATE NOT NULL

-- DEPARTAMENTO 
cod_departamento  NVARCHAR(5) NOT NULL
nome_departamento NVARCHAR(12) NOT NULL

-- CARGO 
cod_cargo NVARCHAR(4) NOT NULL
nome_cargo NVARCHAR(12) NOT NULL

-- GERENTE
salario FLOAT(8) NOT NULL
cod_cargo NCHAR(5) NOT NULL
cod_departamento  NVARCHAR(4) NOT NULL
matricula NVARCHAR(7) NOT NULL
vale_alimentacao FLOAT(8) NOT NULL

-- COORDENADOR DE ATENDIMENTO
gratificacao FLOAT(8) NOT NULL
cod_cargo NCHAR(11) NOT NULL
cod_departamento  NVARCHAR(4) NOT NULL
matricula NVARCHAR(7) NOT NULL
salario FLOAT(8) NOT NULL


-- ANALISTA DE CALL CENTER
especialidade NVARCHAR(12) NOT NULL
cod_cargo NCHAR(11) NOT NULL
cod_departamento  NVARCHAR(4) NOT NULL
matricula NVARCHAR(7) NOT NULL
salario FLOAT(8) NOT NULL


-- ATENDENTE DE CALL CENTER 

hora_extra FLOAT(8) NOT NULL
cod_cargo NCHAR(11) NOT NULL
cod_departamento  NVARCHAR(4) NOT NULL
matricula NVARCHAR(7) NOT NULL
salario FLOAT(8) NOT NULL

-- CLIENTE
cpf NVARCHAR(11) NOT NULL
cod_chamada INT(7) NOT NULL
nome NVARCHAR(30)  NOT NULL
sexo NCHAR(1) NOT NULL
email NVARCHAR NOT NULL
cep NVARCHAR(11) NOT NULL
telefone NVARCHAR (3) NOT NULL
cidade NVARCHAR(30) NOT NULL



--RECLAMAÇOES 
cod_chamada INT(7) NOT NULL
cod_departamento  NVARCHAR(5) NOT NULL
id_cliente INT(7) NOT NULL
matricula INT(7) NOT NULL
protocolo INT(7) NOT NULL


--CARDINALIDADE

-- Um departamento contem 1 ou mais funcionarios
-- Um funcionario faz parte de apenas um departamento
-- Um funcionario ocupa apenas um cargo de gerente em um departamento 
-- Um funcionario ocupa apenas um cargo de coordenador em um departamento 
-- Um ou mais funcionarios ocupam um ou mais cargos de analista em um departamento 
-- Um ou mais funcionarios ocupam um ou mais cargos de atendente em um departamento 
