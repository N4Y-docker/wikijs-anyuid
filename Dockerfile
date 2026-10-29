FROM ghcr.io/requarks/wiki:2.5@sha256:e4708eed80c014449c0c8426c8d466c7a52a62131555bb44372fa48378b448b8

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
