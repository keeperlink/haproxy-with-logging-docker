FROM haproxy:1.8

RUN apt-get update \
  && apt-get install -y  rsyslog

ADD /run.sh /
RUN  chmod +x /run.sh

ENTRYPOINT ["/docker-entrypoint.sh", "/run.sh"]
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]