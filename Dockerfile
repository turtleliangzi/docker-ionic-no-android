FROM ubuntu:latest

MAINTAINER turtle "turtle@anasit.com"

COPY sources.list /etc/apt/sources.list
COPY npmrc ~/.npmrc

RUN \
        # apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0xcbcb082a1bb943db && \
        apt-get clean && \
        apt-get update && \
        apt-get install -y curl && \
        apt-get install -y npm && \
        npm install -g n && \
        n stable


RUN \
        npm install -g cnpm --registry=https://registry.npm.taobao.org && \
        cnpm install -g cordova ionic


WORKDIR /root/myApp

CMD ["ionic", "serve", "--port", "8100", "--livereload-port", "35729", "--all", "--no-browser"]

# Expose ports.
EXPOSE 8100 35729

