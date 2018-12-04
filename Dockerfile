FROM alpine:3.8

RUN apk add --no-cache redis
ADD /run.sh /run.sh
RUN chmod +x /run.sh

CMD ['/run.sh']