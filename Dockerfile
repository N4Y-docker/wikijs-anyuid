FROM ghcr.io/requarks/wiki:2.5@sha256:e5d703d69ee2ee7bf465aebf80ecd620eb6ed434e7fed1ac0bf79d5e1f6de879

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
