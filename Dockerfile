FROM centos:7
RUN yum install httpd -y
RUN echo -e "rm -rf /var/run/httpd/*" >> /root/.bashrc 
RUN echo "/usr/sbin/httpd" >> /root/.bashrc

RUN yum -y install php 
RUN yum install php-common \
    php \
   
    php-mysql\
   php-xml\
    php-soap\
    ncurses \
    net-tools -y
COPY ./index.php   /var/www/html/
RUN echo "ServerName 0.0.0.0:80" >> /etc/httpd/conf/httpd.conf
EXPOSE 80

