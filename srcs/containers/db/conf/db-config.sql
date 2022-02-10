grant select, insert, update, delete on phpmyadmin.* on 'pma'@'localhost' identified by '$PHP_ADMIN_PASSWORD';
create database $WP_DATABASE_NAME
	default character set utf8
	collate utf8_unicode_ci;
grant all on $WP_DATABASE_NAME.* to '$WP_ADMIN_USER'@'localhost' identified by '$WP_ADMIN_PASSWORD';
grant all on *.* to '$MYSQL_USER'@'localhost' identified by '$MYSQL_PASSWORD' with grant option;
grant select on $WP_DATABASE_NAME.* to '$WP_USER'@'localhost' identified by '$WP_PASSWORD'
flush privileges;
