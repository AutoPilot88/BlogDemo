FROM php:8.2-fpm

ENV TZ=Europe/Istanbul PHP_DIR_OWNER=root PHP_DIR_MODE=770

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN set -ex; \
    echo "${TZ}" > /etc/timezone; \
    ln -sfn /usr/share/zoneinfo/${TZ} /etc/localtime && echo $TZ > /etc/timezone; \
    printf '[Date]\ndate.timezone="%s"\n', $TZ > /usr/local/etc/php/conf.d/tzone.ini; \
    apt-get update; \
    rm -r /var/lib/apt/lists/*; \
    docker-php-ext-install pdo_mysql bcmath; \
    apt-get purge -y --auto-remove;

COPY . /tmp/build/

RUN set -ex; \
    mkdir -p /var/php/log /var/php/tmp /var/php/sessions /var/php/upload; \
    mv /tmp/build/docker-entrypoint.sh /opt; \
    rm -rf /tmp/build; \
    chown ${PHP_DIR_OWNER}:www-data /var/php/*; \
    chmod ${PHP_DIR_MODE} /var/php/*;

RUN chmod +x /opt/docker-entrypoint.sh

VOLUME ["/var/www", "/var/php"]

WORKDIR /var/www

ENTRYPOINT ["/opt/docker-entrypoint.sh"]

CMD ["php-fpm"]
