FROM alpine:3.7
LABEL maintainer "nancheald@gmail.com"
# install comman tools
RUN apk update \
    && apk add git \
    && apk add python-dev \
    && apk add py2-pip \
    && apk add libevent-dev \
    && apk add gcc \
    && apk add musl-dev
# download subDomainsBrute
RUN git clone https://github.com/lijiejie/subDomainsBrute subDomainsBrute
WORKDIR subDomainsBrute
# install Dependencies
RUN pip install dnspython gevent
ENTRYPOINT ["sh","-c","python /subDomainsBrute/subDomainsBrute.py $OPTIONS -o result.txt && cat result.txt"]