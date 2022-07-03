FROM alpine:latest
MAINTAINER Panblack https://github.com/Panblack/containers

RUN echo -e "http://mirrors.aliyun.com/alpine/latest-stable/main\nhttp://mirrors.aliyun.com/alpine/latest-stable/community" > /etc/apk/repositories; \
    ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
    addgroup -S -g 1024 nginx; \
    adduser -S -G nginx -u 1024 nginx; \
    apk update && apk add --no-cache nginx curl tree ca-certificates

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
STOPSIGNAL SIGTERM 
CMD /usr/sbin/nginx -g "daemon off;"

# sample command:
# sudo docker run -idt -v $HOME/etc/nginx/:/etc/nginx/ -v $HOME/log/nginx/:/var/log/nginx -v $HOME/html/:/var/lib/nginx/html/ -p 80:80 alpine-nginx:latest

