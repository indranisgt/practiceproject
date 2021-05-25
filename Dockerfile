FROM devopsedu/webapp
RUN sudo apt update
RUN sudo apt install apache2
RUN sudo apt install php libapache2-mod-php
RUN sudo systemctl restart apache2
RUN rm -rf /var/www/html/*
COPY website /var/www/html/
EXPOSE 80
CMD apachectl -D FOREGROUND

