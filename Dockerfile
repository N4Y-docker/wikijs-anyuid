FROM ghcr.io/requarks/wiki:2.5@sha256:5419ec3f4ac6a0bc9fd1b6b126249fe5ad72c02f7a47e885a15e881f10cf7eef

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
