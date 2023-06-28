-- CLIENTE

ALTER TABLE reclamacoes
ADD CONSTRAINT unique_telefone_cliente UNIQUE (telefone_cliente);

ALTER TABLE cliente
ADD CONSTRAINT fk_telefone_cliente FOREIGN KEY (telefone_cliente) REFERENCES reclamacoes(telefone_cliente);

--FUNCIONARIO 

ALTER TABLE departamento
ADD CONSTRAINT unique_cod_departamento UNIQUE (cod_departamento);

ALTER TABLE funcionario
ADD CONSTRAINT fk_cod_departamento FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);

--RECLAMAÇOES

ALTER TABLE reclamacoes  
ADD FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf_cliente);


ALTER TABLE reclamacoes  
ADD FOREIGN KEY (matricula) REFERENCES atendente(matricula);

-- UNIQUE COD_CARGO
ALTER TABLE cargo
ADD CONSTRAINT unique_cod_cargo UNIQUE (cod_cargo);

-- GERENTE

ALTER TABLE gerente
ADD FOREIGN KEY (cod_cargo)  REFERENCES cargo(cod_cargo);

-- COORDENADOR DE ATENDIMENTO


ALTER TABLE coordenador  
ADD FOREIGN KEY (cod_cargo) REFERENCES cargo(cod_cargo);


-- ANALISTA DE CALL CENTER


ALTER TABLE analista
ADD CONSTRAINT fk_cod_cargo FOREIGN KEY (cod_cargo) REFERENCES cargo(cod_cargo);

-- ATENDENTE DE CALL CENTER


ALTER TABLE atendente
ADD CONSTRAINT fk_cod_cargo FOREIGN KEY (cod_cargo) REFERENCES cargo(cod_cargo);