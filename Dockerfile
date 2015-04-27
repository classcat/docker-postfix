FROM ubuntu:trusty
MAINTAINER Masashi Okumura <masao@classcat.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install supervisor postfix sasl2-bin

ADD assets/cc-init.sh /opt/cc-init.sh

ADD assets/supervisord.conf /etc/supervisor/supervisord.conf

CMD /opt/cc-init.sh;/usr/bin/supervisord -c /etc/supervisor/supervisord.conf

#ENTRYPOINT ["/opt/startup.sh"]

