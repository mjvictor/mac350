# How to use it

Your first step is install Docker by following the instructions in 
https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/.

Your second step is install Docker Compose by following the instructions 
in https://docs.docker.com/compose/install/.

After all installed, to create a container with postgres you just need
to run the command:
```
$ docker-compose up --build
```
While running the container, to interacte with postgres run the command:
```
$ docker exec -it parte1_db_1 psql -U postgres
```
This command is running the psql with the user *postgres*(that is a super 
user capable of doing everything) inside the container *parte1_db_1*
You need to check if the container name is really that name, if it is not
look at the name that appears in the terminal when you uploaded the container
with docker-compose.

Once inside the container running postgres, you can do whatever you want, you
can do all SQL commands, create, see, delete, tables.
When you are done, to quit the interactive terminal run:
```
postgres=# \q
```
You can create sql scripts to do all the SQL job, to run this scripts you will
need to copy all the file to the container. To do it, run:
```
$ docker cp scripts/. parte1_db_1:/scripts 
```
After copy the scrypts you can run all of them one by one, inside the postgres 
interactive terminal, running:
```
postgres=# \i scripts/script_name.sql
```
Or you can run from the command line:
```
$ docker exec -it parte1_db_1 psql -U postgres -a -f scripts/script_name.sql
```
That is it! Now, have fun doing whatever you want with the wonderful postgres.
