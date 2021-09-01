FROM centos:7 as rpm_centos7

RUN mkdir -p /extra && \
    yum install -y https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm

RUN yum install --downloadonly mysql-community-server-8.0.23-1.el7 mysql-shell-8.0.23-1.el7 mysql-router-community-8.0.23-1.el7 --downloaddir=/extra/mysql-cluster

RUN yum install -y epel-release 

RUN yum install --downloadonly redis-3.2.12-2.el7.x86_64 --downloaddir=/extra/redis

RUN yum install --downloadonly ruby-2.0.0.648-36.el7 rubygems-2.0.14.1-36.el7 --downloaddir=/extra/ruby

# ENV NGINX_VERSION=1.18.0

# RUN yum install -y \
#     gcc \
#     make \
#     openssl \
#     openssl-devel \
#     pcre \
#     pcre-devel \
#     zlib \
#     zlib-devel \
#     && curl -o nginx.tar.gz -SL http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz \
#     && tar -xzf nginx.tar.gz -C /tmp/ \
#     && cd /tmp/nginx-* \
#     && ./configure --with-stream \
#     && make && make install

RUN yum install --downloadonly nginx-1.20.1-2.el7.x86_64 nginx-mod-stream-1.20.1-2.el7.x86_64 --downloaddir=/extra/nginx

RUN yum install --downloadonly java-1.8.0-openjdk-devel-1.8.0.302.b08-0.el7_9.x86_64 --downloaddir=/extra/openjdk8

RUN yum install -y wget

RUN mkdir -p /extra/nacos && wget https://hub.fastgit.org/alibaba/nacos/releases/download/2.0.1/nacos-server-2.0.1.tar.gz -O /extra/nacos/nacos-server.tar.gz

RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum install --enablerepo=remi --downloadonly redis-6.2.5 --downloaddir=/extra/redis-6.x

COPY mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo

RUN yum makecache && yum install --downloadonly mongodb-org-4.4.8 mongodb-org-server-4.4.8 mongodb-org-shell-4.4.8 mongodb-org-mongos-4.4.8 mongodb-org-tools-4.4.8 mongodb-mongosh --downloaddir=/extra/mongo

RUN mkdir -p /extra/erlang && wget https://github.com/rabbitmq/erlang-rpm/releases/download/v23.3.4.5/erlang-23.3.4.5-1.el7.x86_64.rpm -O /extra/erlang/erlang-23.3.4.5-1.el7.x86_64.rpm

RUN mkdir -p /extra/rabbitmq && wget https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.8.21/rabbitmq-server-3.8.21-1.el8.noarch.rpm -O /extra/rabbitmq/rabbitmq-server-3.8.21-1.el8.noarch.rpm

RUN yum install --downloadonly socat-1.7.3.2-2.el7.x86_64 --downloaddir=/extra/rabbitmq

FROM alpine:3.12

RUN mkdir -p /extra
COPY --from=rpm_centos7 /extra /extra
# COPY --from=rpm_centos7 /usr/local/nginx/sbin/nginx /extra/nginx/

CMD [ "sleep", "360000000" ]    