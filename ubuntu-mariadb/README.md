# dockership/ubuntu-mariadb


> docker build -t dockership/ubuntu-mariadb:latest -t dockership/ubuntu-mariadb:1.0 .

> docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=docker -p 3306:3306 -v /docker_data/my_sql:/var/lib/mysql -d dockership/ubuntu-mariadb:1.0