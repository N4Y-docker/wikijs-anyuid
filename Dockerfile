FROM ghcr.io/requarks/wiki:2.5@sha256:5b44aa5d967ac9894912c8bfb4037b45246c8b07394fb269504f0d65303e200e

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
