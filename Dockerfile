FROM ghcr.io/requarks/wiki:2.5@sha256:8680a5e10663f1aa786b8c54978ce9b56f9802efcf624960d4b1280dcb240299

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
