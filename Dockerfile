FROM redis
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
EXPOSE 6379

FROM tomcat:8.5-alpine
WORKDIR /usr/tomcat/webapps
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]