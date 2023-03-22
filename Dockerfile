FROM ghcr.io/requarks/wiki:2.5@sha256:a678d6910d19608d61f0986537d0f9f2e517653ee043941a94e82e166bd09577

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
