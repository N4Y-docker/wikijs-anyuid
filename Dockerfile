FROM ghcr.io/requarks/wiki:2.5@sha256:a913f94c7d6961823635ba7d1ac6a690e8aeb7e1c80ec87427e265effe96730d

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
