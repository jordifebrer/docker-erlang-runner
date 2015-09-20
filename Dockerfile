FROM centos:centos6
MAINTAINER Jordi Febrer Jordà <jordi.febrer@gmail.com>

RUN yum install wget -y \
    && wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm -P /tmp/ \
    && rpm -Uvh /tmp/erlang-solutions-1.0-1.noarch.rpm

RUN yum install erlang -y

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD [ "hello", "start" ]
