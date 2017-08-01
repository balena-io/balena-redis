FROM redis:alpine
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY start.sh /usr/src/app/start.sh
RUN chmod +x /usr/src/app/start.sh
EXPOSE 6379
CMD [ "/usr/src/app/start.sh" ]