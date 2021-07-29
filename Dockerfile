FROM alpine:3.12

RUN apk add --no-cache redis
RUN /usr/bin/redis-server -v
ADD /run.sh /run.sh
RUN chmod +x /run.sh

CMD '/run.sh'