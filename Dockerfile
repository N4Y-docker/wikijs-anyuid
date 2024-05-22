FROM ghcr.io/requarks/wiki:2.5@sha256:1aae39563cf15d8cfc6371b6d33805653d9348a1af944a8be4501db36f120b84

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
