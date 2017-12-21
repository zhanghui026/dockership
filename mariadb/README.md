docker run --name some-mariadb -e MYSQL_ROOT_PASSWORD=docker -p 3307:3306 -v /Users/zhanghui/workspace/docker-db-data/mysql:/var/lib/mysql -d zh-mariadb



root/some-mariadb