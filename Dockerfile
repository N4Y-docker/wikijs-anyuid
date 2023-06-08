FROM ghcr.io/requarks/wiki:2.5@sha256:b102c6dbee67ab50e51024f2ccce46b872aa1bb1f0b8b7726ddf7aae52e63d64

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
