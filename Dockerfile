FROM ghcr.io/requarks/wiki:2.5@sha256:20ee606c57e785a757ec5ae898afe9472531373e2dbe351f2fd115f5aa34854b

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
