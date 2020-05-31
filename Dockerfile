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
CMD ["/bin/bash"]
EXPOSE 80

