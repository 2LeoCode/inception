from	debian:buster

add		setup /tmp
add		conf/db-config.sql /tmp

run		apt-get update -y;\
		apt-get upgrade -y;\
		apt-get install -y gettext expect mariadb-server;\
		/tmp/setup

expose	3306

volume	[ "/var/log", "${DOCKER_VOLUMES}/db" ]

cmd		[ "/usr/bin/mysqld_safe" ]
