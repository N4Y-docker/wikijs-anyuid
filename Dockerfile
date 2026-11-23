FROM ghcr.io/requarks/wiki:3.6@sha256:bd4819960f2f9d35ef016653b97abf5fc0cd93a941d3baf34d2e79e4c9059169

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
