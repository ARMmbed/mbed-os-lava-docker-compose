ARG image="${DC_SERVER_IMAGE}"
FROM ${image}

ARG extra_packages=""
RUN apt -q update
RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y install ${extra_packages} openssl

RUN mkdir -p /etc/apache2/certificate
ADD ./cert/apache-certificate.crt /etc/apache2/certificate/apache-certificate.crt
ADD ./cert/apache.key /etc/apache2/certificate/apache.key

RUN a2enmod ssl
RUN a2enmod rewrite
RUN printf "\n<Directory /var/www/html>\nAllowOverride All\n</Directory>\n" >> /etc/apache2/apache2.conf

ENTRYPOINT ["/root/entrypoint.sh"]
