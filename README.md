Projeto (exemplo) com Framework NocoDB e BD Postgresql 

Num servidor linux

<b>git clone https://github.com/cabdominguesdc/nocodb_docker_example.git</b>

<b>cd nocodb_docker_example</b>

Editar o .env e mudar as passwords da BD. Usar passwords fortes (maiusculas, minusculas, numeros, caracteres como o cardinal, dolar, etc. Evitar aspas ou barras).

<b>docker-compose up --build -d</b>

(a opção -d coloca os container a correr em background. caso se queira ver os logs enquanto os containers são iniciados, podemos executar apenas   docker-compose up --build   )

Ver o resultado da criação dos containers com 

 <b>docker container ls -a | grep nocodb   </b>        
 
  xxxxxxxxxxxx   nocodb/nocodb:latest                                                        "/usr/bin/dumb-init …"   6 minutes ago   Up 4 minutes             0.0.0.0:8998->8080/tcp, [::]:8998->8080/tcp              nocodb_app

  xxxxxxxxxxxx   postgres:15                                                                 "docker-entrypoint.s…"   6 minutes ago   Up 4 minutes (healthy)   0.0.0.0:2432->5432/tcp, [::]:2432->5432/tcp              nocodb_postgres

Devemos ter dois containers a correr. Caso nao fiquem, observar os logs com  
    docker container logs nocodb_app e 
    docker container logs nocodb_postgres 


Depois dos dois containers docker arrancarem, aceder a 
http://IP_PUBLICO_SERVIDOR:8998/dashboard/#/signup

<img width="614" height="643" alt="imagem" src="https://github.com/user-attachments/assets/724c40c4-5ab2-4271-8aa2-4fa084fad0b2" />

Depois de entrar no NocoDB, configurar uma ligação (icon connection) à BD criada no script initdb/create-db.sql

<img width="1275" height="721" alt="imagem" src="https://github.com/user-attachments/assets/de004a95-e054-4cd7-9926-ccc2bb8e94be" />


Criar os dados todos na BD criada pelo script  initdb/create-db.sql (ou seja, fora da BD do Nocodb)

Ver manual aqui: https://nocodb.com/docs/product-docs 

Garantir o backup das pastas dos dados (Dados do nocoDB e  BD postgreSQL)


Para aceder do PowerBI para criar reports, aceder com as credenciais da BD criada. 
É necessáro instalar o https://cdn.mysql.com//Downloads/Connector-Net/mysql-connector-net-9.4.0.msi
Alternativamente usar a API Swagger que pode ser acedida no menu da respetiva BASE.

<img width="354" height="328" alt="imagem" src="https://github.com/user-attachments/assets/9393c322-32ff-4581-8e1e-92dc97251d51" />

