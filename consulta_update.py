# --Consulta
# -- Ao final de cada semana, criar um relatório que relatório que descreva o número de reclamações registradas e resolvidas. 
def consulta_helpdesk():
    sql_consulta_helpdesk = '''SELECT COUNT(*) AS reclamacoes_registradas,
       COUNT(*) AS reclamoes_abertas,
       COUNT(*) FILTER (WHERE cod_chamada = 'R') AS reclamacoes_resolvidas
FROM reclamacoes;'''
    return sql_consulta_helpdesk

# --Updates
# -- Solicitaram que seja possível transformar uma reclamação de aberto em resolvida a partir do código da reclamação.

def helpdesk():
 sql_reclamacoes_update = '''UPDATE reclamacoes
SET cod_chamada = 'R'
WHERE protocolo = 1000031;--Substituir com o valor do protocolo da chamada'''
 return sql_reclamacoes_update

# --Cadastrar funcionario atendente

def cadastro_funcionario():
 sql_cadastro_colaborador = '''INSERT INTO atendente (hora_extra, cod_cargo, cod_departamento, matricula, salario)
VALUES (100.00, 'CGO04', 'DEP01', '1745236', 2800.00);'''
 return sql_cadastro_colaborador