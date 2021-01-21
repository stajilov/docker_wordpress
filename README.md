

# Intro

We always wanted a quicker better depployment for both new Wordpress projects and legacy WP projects.

Deploying WP projects in a old school way seemed no longer a good idea

That's why we worked carefully to create this template for docker compose

Thus, we create a composition with the following services
- Wordpress fpm
- Nginx - nginx-wordpress
- MySQL
- Redis


# Instructions


0. carefully check configs - your domwin in nginx-conf/default.conf, mapping of source files to volumes in docker-compose.yml, presence of backup files and migrate (one-time sql script), domain name in secure.sh etc
Also check config from `your_wp_source_folder/wp-config.php`
1. provide `wp-dbbackup.sql.gz`
2. Provide migrate script to update urls
3. `docker-compose up -d `
4. sometimes you can get permission error, then dive into container and run chown -R command: 

`docker exec -it files_wordpress_1 /bin/bash`
`chown -R www-data:www-data /var/www/html`

5. run sh secure.sh to propagate certificates for cert bot


# Useful commands


`sudo docker stop $(sudo docker ps -aq)` - stops containers
`sudo docker rm $(sudo docker ps -aq)` - deletes all containers
`sudo docker volume rm $(sudo docker volume ls --filter dangling=true -q)` - deletes volumes
`docker logs --since 5m files_nginx_1` - reads logs from detached running container