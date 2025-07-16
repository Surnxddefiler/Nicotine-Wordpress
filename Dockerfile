FROM php:8.1-apache

# Установка зависимостей
RUN docker-php-ext-install mysqli

# Копируем файлы в контейнер
COPY . /var/www/html/

# Права на папки
RUN chown -R www-data:www-data /var/www/html

# Включаем mod_rewrite
RUN a2enmod rewrite
