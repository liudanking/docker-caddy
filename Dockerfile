FROM ubuntu:16.04

LABEL maintainer="liudanking@gmail.com"

ENV http_proxy='http://192.168.1.124:6152'
ENV https_proxy='http://192.168.1.124:6152'

RUN apt-get update

RUN set -x  \
	&& apt-get install curl -y \
	&& curl https://getcaddy.com | bash -s personal && which caddy


ENV http_proxy=''
ENV https_proxy=''



