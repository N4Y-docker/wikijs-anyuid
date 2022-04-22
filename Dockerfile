FROM ghcr.io/requarks/wiki:2.5@sha256:61506fe979a4e2b349996bc0b8942532e34647139167141c27357679e1e9c81f

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
