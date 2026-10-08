FROM ghcr.io/requarks/wiki:2.5@sha256:fffff288a52f76e5b8c19a4fbcd0f3e538e96edea642c4f2d813d54d59a876de

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
