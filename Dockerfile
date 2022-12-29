FROM ghcr.io/requarks/wiki:2.5@sha256:5ee0e951a9e102e89fd165a4e94c3fccad29691dc56055173a7197ec03309d47

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
