
# Modelagem de Banco de Dados para Call Center

>Uma breve descrição sobre o negocio : Uma empresa que trabalha com CallCenter solicitou o desenvolvimento de um sistema para realizar o controle das suas atividades. >Eles desejam criar um cadastro dos funcionário. Além disso, desejam que exista um controle para o cadastro das reclamações que chegam, permitindo identificá-las como >chamada em aberto e já resolvidas. Pretendem ao final de cada semana, criar um relatório que descreva o número de reclamações registradas e resolvidas. Solicitaram >que seja possível transformar uma reclamação de aberto em resolvida a partir do código da reclamação.


## Stack utilizada

**Back-end:** 
- Postgres 
- Dbeaver 
- Python
- Oracle Cloud


# Configurando MV 
Para iniciar o projeto foi preciso criar uma conta na [oracle cloud](https://signup.cloud.oracle.com/).

## Configurando acesso remoto a Maquina Virtual
Essa etapa eu realizei utilizando o sistema operacional Windows
- baixar openssh
- extrair pasta
- abrir o pasta do Openssh via termital Powershell 
- Digitar comando no terminal :  

```
.\ssh.exe -i .\ssh-key-example-05-05.key USER@IP_DA_MAQUINA

```
Para fechar conexão basta digitar o comando 
```
exit
```
## Instalando e Configurando acesso remoto ao PostgreSQL


### Intalando PostgreSQL

Antes de iniciar a instalaçãp do  Postgres,  atualize os pacotes local do seu servidor:
```
sudo apt update
```
Em seguida, instale o pacote Postgres (o pacote -contrib contem alguns serviços e funcionalidade adicionais )

```
sudo apt install postgresql postgresql-contrib
```
### Configurando senha para acessar o Banco
```
sudo -u postgres psql
```
```
postgres=# alter user postgres with encrypted 
```
```
password 'digitar senha aqui';
```

```\q``` para sair


### Alterando Arquivo  Postgresql.conf
```
sudo nano /etc/postgresql/versao_do_postgres/main/postgresql.conf
```
Na linha :
```
# - Connection Settings -

#listen_addresses = 'localhost'                  # what IP address(es) to listen on;
```
Alterar para:
```
# - Connection Settings -

listen_addresses = '*'                  	 # what IP address(es) to listen on;
```

```crtl + X ``` para sair br
``` Y ```para confirmar alteração 
```Enter``` para sair novamente
### Alterando Arquivo  pg_hba.conf
```
sudo nano /etc/postgresql/versao_do_postgres/main/pg_hba.conf
```
Na linha: 
```
# "local" is for Unix domain socket connections only
local   all             all                                     peer
```
Alterar para:
```
# "local" is for Unix domain socket connections only
local   all             all                                     trust

```

Na Linha:
```
# IPv4 local connections:
host    all             all             127.0.0.1/32               md5
```
Alterar para:
```
# IPv4 local connections:
host    all             all             0.0.0.0/0                  md5
```
### Desabilitando Firewall
```
sudo ufw disable 
```
```
sudo apt install firewalld
```
```
sudo systemctl enable firewalld
```
Selecione o numero da porta que deseja habilitar eu escolhi habilitar a '5432' por que é o padrão de conexão com o postgre
```
sudo firewall-cmd --permanent --zone=public --add-port=5432/tcp
```
```
sudo firewall-cmd --reload
```


# Habilitando banco de dados para utilizar com Dbeaver

### Verificar se o banco está online
```
sudo service postgresql status
```
### Reiniciar a conexão com o banco
```
sudo service postgresql restart
```
### Fechar a conexão com o banco
```
sudo service postgresql stop
```

# Acessando user postgres

sudo -i -u postgres

## Para interagir com o SGBD imediatamente basta digitar 
```
psql
```

Digite ```\q``` para sair do prompt do Postgres 

```
postgres=# \q
```
