FROM devopsedu/webapp
RUN apt update
RUN apt-get install -y apache2
RUN apt-get install -y php libapache2-mod-php
RUN systemctl restart apache2
RUN rm -rf /var/www/html/*
COPY website /var/www/html/
EXPOSE 80
CMD apachectl -D FOREGROUND

