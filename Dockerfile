FROM ghcr.io/requarks/wiki:2.5@sha256:e013da5e3b634fb6e09f469f2d63fe3a138d79087455bf1e9d804c7bd5109a09

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
