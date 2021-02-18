FROM arm32v6/alpine

RUN apk add --no-cache \
	git \
	curl \
	composer \
	php7 \
	php7-mbstring \
	php7-pdo \
	php7-openssl\
	php7-dom \
	php7-xml \
	php7-json \
	php7-xmlwriter

RUN composer create-project --prefer-dist laravel/lumen /var/www/html

WORKDIR /var/www/html

CMD ["php", "-S localhost:80", "-t public"]

