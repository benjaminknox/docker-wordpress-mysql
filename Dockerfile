FROM wordpress:php7.2
RUN apt-get update ; apt-get install netcat -y
COPY wait-for-mysql.sh /
ENTRYPOINT ["/wait-for-mysql.sh"]
