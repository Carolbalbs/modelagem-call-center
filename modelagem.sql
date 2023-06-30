
--FUNCIONARIO 
matricula NVARCHAR(7) NOT NULL
cod_departamento NVARCHAR(5) NOT NULL
cod_cargo NVARCHAR(5) NOT NULL
nome NVARCHAR(30)  NOT NULL
sexo NCHAR(1) NOT NULL
telefone NVARCHAR(11) NOT NULL
cpf NVARCHAR(11) NOT NULL
data_admissao DATE NOT NULL

-- DEPARTAMENTO 
cod_departamento  NVARCHAR(5) NOT NULL
nome_departamento NVARCHAR(12) NOT NULL

-- CARGO 
cod_cargo NVARCHAR(5) NOT NULL
nome_cargo NVARCHAR(12) NOT NULL

-- GERENTE
matricula NVARCHAR(7) NOT NULL
cod_cargo NCHAR(5) NOT NULL
salario FLOAT(8) NOT NULL
cod_departamento  NVARCHAR(5) NOT NULL
vale_alimentacao FLOAT(8) NOT NULL

-- COORDENADOR DE ATENDIMENTO
matricula NVARCHAR(7) NOT NULL
cod_cargo NCHAR(5) NOT NULL
gratificacao FLOAT(8) NOT NULL
cod_departamento NVARCHAR(5) NOT NULL
salario FLOAT(8) NOT NULL


-- ANALISTA DE CALL CENTER
matricula NVARCHAR(7) NOT NULL
cod_cargo NCHAR(5) NOT NULL
especialidade NVARCHAR(12) NOT NULL
cod_departamento NVARCHAR(5) NOT NULL
salario FLOAT(8) NOT NULL


-- ATENDENTE DE CALL CENTER 

matricula NVARCHAR(7) NOT NULL
cod_cargo NCHAR(5) NOT NULL
hora_extra FLOAT(8) NOT NULL
cod_departamento NVARCHAR(5) NOT NULL
salario FLOAT(8) NOT NULL

-- CLIENTE
cpf_cliente NVARCHAR(11) NOT NULL
telefone_cliente NVARCHAR (11) NOT NULL
cod_chamada INT(1) NOT NULL
nome NVARCHAR(30) NOT NULL
sexo NCHAR(1) NOT NULL
email NVARCHAR NOT NULL
cep NVARCHAR(11) NOT NULL
cidade NVARCHAR(30) NOT NULL



--RECLAMAÇOES 

protocolo INT(7) NOT NULL
cpf_cliente NVARCHAR(11) NOT NULL
matricula INT(7) NOT NULL
telefone_cliente NVARCHAR (11) NOT NULL
cod_chamada INT(1) NOT NULL
cod_departamento NVARCHAR(5) NOT NULL


