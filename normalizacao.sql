--FUNCIONARIO 

ALTER TABLE funcionario  
ADD  FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);

-- GERENTE

ALTER TABLE gerente
ADD FOREIGN KEY (cod_cargo)  REFERENCES cargo(cod_cargo);

-- COORDENADOR DE ATENDIMENTO

ALTER TABLE coordenador  
ADD FOREIGN KEY (cod_cargo) REFERENCES cargo(cod_cargo);


-- ANALISTA DE CALL CENTER

ALTER TABLE analista 
ADD FOREIGN KEY (cod_cargo) REFERENCES cargo(cod_cargo);

-- ATENDENTE DE CALL CENTER

ALTER TABLE atendente   
ADD FOREIGN KEY (cod_cargo) REFERENCES cargo(cod_cargo);

-- CLIENTE

ALTER TABLE cliente  
ADD FOREIGN KEY (telefone_cliente) REFERENCES reclamacoes(telefone_cliente);

--RECLAMAÇOES

ALTER TABLE reclamacoes  
ADD FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf_cliente);


ALTER TABLE reclamacoes  
ADD FOREIGN KEY (matricula) REFERENCES atendente(matricula);
