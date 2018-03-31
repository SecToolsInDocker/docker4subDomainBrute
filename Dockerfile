FROM alpine:3.7
LABEL maintainer "nancheald@gmail.com"
# install comman tools
RUN apk update \
    && apk add git \
    && apk add python \
    && apk add py2-pip \
    && apk add libevent-dev \
    && apk add gcc
# download subDomainsBrute
RUN git clone https://github.com/lijiejie/subDomainsBrute subDomainsBrute
WORKDIR subDomainsBrute
# install Dependencies
RUN pip install dnspython gevent
ENTRYPOINT ["/usr/bin/python", "/subDomainsBrute/subDomainsBrute.py"]