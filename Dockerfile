FROM ghcr.io/requarks/wiki:2.5@sha256:98cb1c1d9796cfd2dd751eeacb9435659adffca58780f9d6050a809bfa62cd54

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
