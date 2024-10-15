FROM ghcr.io/requarks/wiki:2.5@sha256:707fa8f0c739d098346eff46af4ef3e71f10df88b0b49785c70b4cf0075274d5

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
