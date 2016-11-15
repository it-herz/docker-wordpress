FROM wordpress:v3.4.1

RUN apt-get update && apt-get install -y libldap2-dev && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu && \
    docker-php-ext-install ldap && apt-get purge -y --auto-remove libldap2-dev
    
