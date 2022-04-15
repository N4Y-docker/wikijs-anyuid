FROM ghcr.io/requarks/wiki:2.5@sha256:1337c10d3188d030ed206014dc69524f44fb8c35e6be8b8f7949afe102fa5675

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
