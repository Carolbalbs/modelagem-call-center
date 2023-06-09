
--FUNCIONARIO 
nome NVARCHAR(30)  NOT NULL
telefone NVARCHAR(11) NOT NULL
salario FLOAT(10) NOT NULL
id_setor NVARCHAR(7) NOT NULL
id_cargo NCHAR(11) NOT NULL
id_matricula NCHAR(7) NOT NULL


-- GERENTE
id_cargo NCHAR(11) NOT NULL
setor NVARCHAR(7) NOT NULL
salario FLOAT(8) NOT NULL

-- SUPERVISOR CALL CENTER

id_cargo NCHAR(11) NOT NULL
id_setor NVARCHAR(7) NOT NULL
salario FLOAT(8) NOT NULL

-- COORDENADOR DE ATENDIMENTO
id_cargo NCHAR(11) NOT NULL
id_setor NVARCHAR(7) NOT NULL
salario FLOAT(8) NOT NULL


-- ANALISTA DE CALL CENTER
id_cargo NCHAR(11) NOT NULL
id_setor NVARCHAR(7) NOT NULL
salario FLOAT(8) NOT NULL

-- SUPERVISOR DE CALL CENTER
id_cargo NCHAR(11) NOT NULL
id_setor NCHAR(7) NOT NULL
salario char(8) NOT NULL

-- ATENDENTE DE CALL CENTER   
id_cargo NCHAR(11) NOT NULL
id_setor NCHAR(7) NOT NULL
salario FLOAT(8) NOT NULL
turno NVARCHAR(8) NOT NULL

--HELPDESK
id_help_desk NCHAR(7) NOT NULL
id_setor NCHAR(7) NOT NULL
protocolo NCHAR(11) NOT NULL
status NVARCHAR(7) NOT NULL

--TELEMARKETING
id_telemarketing NCHAR(7) NOT NULL
id_setor NCHAR(7) NOT NULL
cod_chamada NCHAR(11) NOT NULL

--COBRANCA
id_cobranca NCHAR(7) NOT NULL
id_setor NCHAR(7) NOT NULL
cod_cobranca NCHAR(11) NOT NULL

-- CLIENTE

nome NVARCHAR(30)  NOT NULL
cpf NVARCHAR(11) NOT NULL
email NVARCHAR NOT NULL
telefone NVARCHAR (3) NOT NULL
protocolo INT(7) NOT NULL
cod_chamada INT(7) NOT NULL
cod_cobranca INT(7) NOT NULL



-- EMPRESA DE CALL CENTER

-- CADASTRO DE FUNCIONARIOS

-- CADASTRO PARA CONTROLE DE RECLAMAÇÕES
-- 	- ABERTAS
-- 	- RESOLVIDAS


-- GERAÇÃO DE RELATORIO QUE NO FIM DA SEMANA:

--   - DESCREVE O NUMERO DAS RECLAMAÇOES REGISTRADAS E RESOLVIDAS

-- Solicitaram que seja possível transformar uma reclamação de aberto em resolvida a partir do código da reclamação.


-- CARDINALIDADE
-- ---------------------

-- Funcionario X Setor
-- Pelo menos um Funcionario Trabalham em Setor Ativo

-- Setor Ativo pode ter 1 ou N Funcionarios

-- Pelo menos um Funcionario Trabalham em Setor Receptivo

-- Setor Receptivo pode ter 1 ou N Funcionarios

-- Atendente X Cliente
-- Pelo menos um Atendente realiza ligações para 1 ou para N clientes
-- Pelo menos um Atendente recebe ligações de 0 ou N Clientes