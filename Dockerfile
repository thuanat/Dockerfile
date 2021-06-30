# Based centos image
FROM centos:7

MAINTAINER "LE VAN THUAN"

# Install Apache
RUN yum -y install httpd

WORKDIR /var/www/html

#Copy codes from host to image

ADD ./Codes /var/www/html

#Open ports

EXPOSE 80 443

# Start apache service when container run

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
