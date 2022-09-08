FROM ghcr.io/requarks/wiki:2.5@sha256:de23673914e56b69b795987509ca8e5f45aa6ca3834ae91e57b55e5388d3d4e3

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
