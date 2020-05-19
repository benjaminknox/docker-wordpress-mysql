FROM wordpress:php7.2

RUN apt-get update ; apt-get install netcat dos2unix -y

COPY wait-for-mysql.sh /
COPY start-apache.sh /

RUN dos2unix /wait-for-mysql.sh && dos2unix /start-apache.sh
RUN apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*

RUN chmod +x /wait-for-mysql.sh /start-apache.sh

ENTRYPOINT ["/wait-for-mysql.sh"]
