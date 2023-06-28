--Consulta
-- Ao final de cada semana, criar um relatório que relatório que descreva o número de reclamações registradas e resolvidas. 

SELECT COUNT(*) AS reclamacoes_registradas,
       COUNT(*) AS reclamoes_abertas,
       COUNT(*) FILTER (WHERE cod_chamada = 'R') AS reclamacoes_resolvidas
FROM reclamacoes;


--Updates
-- Solicitaram que seja possível transformar uma reclamação de aberto em resolvida a partir do código da reclamação.

UPDATE reclamacoes
SET cod_chamada = 'R'
WHERE protocolo = cod_chamada;--Substituir com o valor do protocolo da chamada

--Cadastrar funcionario atendente

INSERT INTO funcionario (matricula, cod_departamento, cod_cargo, nome, sexo, telefone, cpf, data_admissao)
VALUES ('9876543', 'DEP02', 'CGO04', 'Lucas Souza', 'M', '109876543', '90123456789', '2023-07-05');
