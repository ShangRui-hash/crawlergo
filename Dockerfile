FROM alpine


COPY ./crawlergo /crawlergo

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories \
      && apk add --no-cache wget \
      && apk add --update chromium
ENTRYPOINT ["/crawlergo","-c","/usr/lib/chromium/chrome"]
