
# Modelagem de Banco de Dados para Call Center

Uma breve descrição sobre o negocio : Uma empresa que trabalha com CallCenter solicitou o desenvolvimento de um sistema para realizar o controle das suas atividades. Eles desejam criar um cadastro dos funcionário. Além disso, desejam que exista um controle para o cadastro das reclamações que chegam, permitindo identificá-las como chamada em aberto e já resolvidas. Pretendem ao final de cada semana, criar um relatório que descreva o número de reclamações registradas e resolvidas. Solicitaram que seja possível transformar uma reclamação de aberto em resolvida a partir do código da reclamação.


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
## Instalando e Configurando acesso remoto ao postgreSQL

Esse é um 
### Intalando postgreSQL 
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


### Alterando Arquivo  postgresql.conf
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
sudo firewall-cmd --permanent --zone=public --add-port=/tcp
sudo firewall-cmd --reload
```


## Referência

 - [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)
 - [Awesome README](https://github.com/matiassingers/awesome-readme)
 - [How to write a Good readme](https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project)


## Apêndice

Coloque qualquer informação adicional aqui


## Documentação da API

#### Retorna todos os itens

```http
  GET /api/items
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | **Obrigatório**. A chave da sua API |

#### Retorna um item

```http
  GET /api/items/${id}
```

| Parâmetro   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Obrigatório**. O ID do item que você quer |

#### add(num1, num2)

Recebe dois números e retorna a sua soma.


## Autores

- [@octokatherine](https://www.github.com/octokatherine)


## Etiquetas

Adicione etiquetas de algum lugar, como: [shields.io](https://shields.io/)

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)


## Usado por

Esse projeto é usado pelas seguintes empresas:

- Empresa 1
- Empresa 2


## Uso/Exemplos



