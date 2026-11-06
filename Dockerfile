FROM ghcr.io/requarks/wiki:3.1@sha256:cd2c88eecc17362a7a8ab81c3ec9bdb4300925bfc74e1f87dc9d393a654e5944

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
