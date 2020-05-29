# Dockerize LAMP Stack Dev
Dockerize LAMP Stack Development environment

1. PHP hello world starter app.
2. Setup the local env.
3. Deploy a database (in docker locally).
4. Use flyway DB to apply alters using docker-compose.
5. Have the port forwarding working and get a UI up.

## Installation
> git clone https://github.com/saktib/Dockerize_LAMP_Flyway.git

> cd Dockerize_LAMP_Flyway/

> docker-compose build --no-cache

> docker-compose up -d

## Run
> http://localhost/

> http://localhost:8080/

## DB Check for flyway migration

> Connect to the MySQL database using any client. (Host: localhost, port: 3306, user: root, no password).

> Check for schema name 'testapp' and table 'test_data' (which got created using flyway migration script).