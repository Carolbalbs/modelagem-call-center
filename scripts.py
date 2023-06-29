import psycopg2 as pg
import pandas as pd
import normalizacao
import create_insert_table
import consulta_update
from sqlalchemy import create_engine


#Estabelecendo conexão com Data base
engine = create_engine('postgresql://postgres:q$74831@129.159.60.153:5432/postgres') 
def conecta_db():
    connection = pg.connect(database="postgres",
                           user="postgres",
                           password="q$74831",
                           host="129.159.60.153",
                           port="5432")

    statusDB = connection.status

    if statusDB == 0:
        print("Falha na conexão")
    else:
        print("Conexão bem-sucedida")

    return connection
# Função para inserir dados no banco
def criar_db(sql_create_table):
  connection = conecta_db()
  open_session = connection.cursor()
  open_session.execute(sql_create_table)
  connection.commit()
  connection.close()

sql_create_table = create_insert_table.create_table()
criar_db(sql_create_table)

# Função para inserir dados no banco
def inserir_db(sql_insert_data_callcenter):
    connection = conecta_db()
    open_session = connection.cursor()
    try:
        open_session.execute(sql_insert_data_callcenter)
        connection.commit()
    except (Exception, psycopg2.DatabaseError) as error:
        print("Error: %s" % error)
        connection.rollback()
        open_session.close()
        return 1
    open_session.close()
    
sql_insert_data_callcenter = create_insert_table.insert_table()
inserir_db(sql_insert_data_callcenter)

#  Função definir chaves estrangeiras  no banco
def chaves_estrangeira(sql_normalize):
  connection = conecta_db()
  open_session = connection.cursor()
  open_session.execute(sql_normalize)
  connection.commit()
  connection.close()

sql_normalize = normalizacao.define_chaves()
chaves_estrangeira(sql_normalize)

# Função para consultas no banco

def consulta_callcenter(sql_consulta):
  
  df = pd.read_sql_query(sql_consulta, con = engine)   
    
  print(df)
  
sql_consulta = consulta_update.consulta_helpdesk()  
consulta_callcenter(sql_consulta)

  
# Função para updates no banco
def updates_callcenter(sql_update):
  connection = conecta_db()
  open_session = connection.cursor()
  open_session.execute(sql_update)
  connection.commit()
  connection.close()
sql_update = consulta_update.helpdesk()
updates_callcenter(sql_update)
  
# Função para cadastro de funcionario no banco
def cadastro_callcenter(sql_cadastro):
  connection = conecta_db()
  open_session = connection.cursor()
  open_session.execute(sql_cadastro)
  connection.commit()
  connection.close()
print('Funcionario Cadastrado')  
sql_cadastro = consulta_update.cadastro_funcionario()
cadastro_callcenter(sql_cadastro)




