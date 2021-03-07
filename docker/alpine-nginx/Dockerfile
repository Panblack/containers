FROM alpine:latest
MAINTAINER Panblack https://github.com/Panblack/containers

RUN mv /etc/apk/repositories /etc/apk/repositories.bak
RUN echo -e "http://mirrors.aliyun.com/alpine/latest-stable/main\nhttp://mirrors.aliyun.com/alpine/latest-stable/community" > /etc/apk/repositories
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN addgroup -S -g 1024 nginx
RUN adduser -S -G nginx -u 1024 nginx
RUN apk update && apk add --no-cache nginx curl tree ca-certificates

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
STOPSIGNAL SIGTERM 
CMD /usr/sbin/nginx -g "daemon off;"

# sample command:
# sudo docker run -idt -v $HOME/etc/nginx/:/etc/nginx/ -v $HOME/log/nginx/:/var/log/nginx -v $HOME/html/:/var/lib/nginx/html/ -p 80:80 alpine-nginx:latest

