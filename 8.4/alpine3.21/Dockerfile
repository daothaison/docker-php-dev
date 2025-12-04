# NOTE: This file was generated via generate.sh. Don't edit it directly

FROM daothaison/php:8.4.15-nginx-alpine3.21

ENV COMPOSER_VERSION=2.4.1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version="$COMPOSER_VERSION"

COPY rootfs /
RUN apk add --no-cache git

RUN apk add --update linux-headers --no-cache --virtual .ext-deps autoconf gcc musl-dev make \
    && pecl install xdebug pcov \
    && docker-php-ext-enable xdebug pcov \
    && apk del .ext-deps