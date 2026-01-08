FROM ghcr.io/requarks/wiki:2.5@sha256:1ad473cff124fa455e7aa43bbf7984c5b111a62a1317c664c4bf7a51343d6c91

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
