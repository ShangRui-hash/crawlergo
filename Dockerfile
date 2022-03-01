FROM alpine:3.10


COPY ./crawlergo /crawlergo

# RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories \
RUN apk add --no-cache wget \
      && apk add --update chromium
COPY ./common.txt /common.txt
COPY ./run.sh /run.sh 
ENTRYPOINT ["/run.sh"]
