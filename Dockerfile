
FROM ubuntu:24.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 \
    && rm -rf /var/lib/apt/lists/*

RUN echo '<h1>Jenkins Docker Deployment Successful!</h1>' > /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
