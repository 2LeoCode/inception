from	debian:buster

add		setup /tmp
add		boot /root

run		apt update -y;\
		apt upgrade -y;\
		apt install -y pwgen unzip php php-mbstring php-zip php-gd php-fpm;\
		/tmp/setup

add		conf/config.inc.php /usr/share/phpmyadmin
add		conf/wp-config.php ${DOCKER_VOLUMES}/wordpress

expose	9000 3306

volume	[ "/var/log", "${DOCKER_VOLUMES}/wordpress" ]

cmd		[ "/root/boot" ]
