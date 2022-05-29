FROM ghcr.io/requarks/wiki:2.5@sha256:eb9c6ba0d7d326484021f194823f38af9f8cb4b5c79ee236434c2b5f8a88b5d3

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
