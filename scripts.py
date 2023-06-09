import pandas as pd
import psycopg2 as pg
from sqlalchemy import create_engine



#Estabelecendo conexão com Data base
connection = pg.connect(database = "postgres",
                       user = "postgres",
                       password = "q$74831", 
                       host = "129.159.60.153", 
                       port = "5432")

connection.autocommit = True
cursor = connection.cursor()
# query to create a database 
sql = ''' CREATE database products ''';
  
# executing above query
cursor.execute(sql)
print("Database has been created successfully !!");
  
# Closing the connection
connection.close()



# curs = conection.cursor()

# sql_insert = ""
# curs.execute(sql_insert)
# connection.commit()

# sql_update = ""

# curs.execute(sql_update)
# connection.commit()

# sql_delete = ""

# curs.execute(sql_delete)
# connection.commit()





