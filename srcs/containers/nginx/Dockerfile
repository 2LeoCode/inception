from	debian:buster

add		setup /tmp
add		boot /root

run		apt-get update -y;\
		apt-get upgrade -y;\
		apt-get install -y nginx procps curl;\
		/tmp/setup

add		${NGINX_CERT_DIR}/nginx.key /etc/nginx/ssl
add		${NGINX_CERT_DIR}/nginx.pem /etc/nginx/ssl
add		${NGINX_CERT_DIR}/nginx.conf /etc/nginx
add		conf/inception.conf /etc/nginx/sites-available/inception

run		ln -s /etc/nginx/sites-available/inception /etc/nginx/sites-enabled

expose	443 9000

volume	[ "/var/log", "${DOCKER_VOLUMES}/wordpress" ]

cmd		[ "/root/boot" ]
