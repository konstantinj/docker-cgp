FROM alpine
MAINTAINER Konstantin Jakobi <konstantin.jakobi@gmail.com>

RUN apk add --no-cache bash curl git rrdtool php-json \
 && git clone https://github.com/pommi/CGP.git \
 && mv CGP* /www \
 && mkdir /config

COPY config.php php.ini run.sh /
CMD /run.sh
