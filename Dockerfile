FROM ghcr.io/requarks/wiki:2.5@sha256:0fc8ae99673e6d53d81d9bdbd611015df052dcbdc8e2d979f22d3df13bf00e5a

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
