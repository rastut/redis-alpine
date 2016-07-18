FROM alpine:3.4
MAINTAINER Carles Lopez <carles.lopez@keradgames.com>

RUN addgroup -S redis && adduser -S -G redis redis

RUN apk add --no-cache redis su-exec 

EXPOSE 6379

CMD ["su-exec","redis","redis-server","--protected-mode no"]
