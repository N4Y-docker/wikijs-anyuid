FROM ghcr.io/requarks/wiki:2.5@sha256:1eaa2de751c2925871a95a02e0ddbdd5c48bf2e016653b2e4a8f0c646cc4ff83

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
