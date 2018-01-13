# WordPress with MySQL Docker Containers
1) Clone this repo `$ git clone https://github.com/benjaminknox/docker-wordpress-mysql`
2) `cd` into the github repo `$ cd docker-wordpress-myql`
3) Create a `.env` file in this directory with these vars:
```
MYSQL_DATABASE=wordpress_db
MYSQL_USER=wordpress_user
MYSQL_PASSWORD=wordpress12345
MYSQL_ROOT_PASSWORD=wordpress12345
```

4) Run `$ docker-compose up`


