FROM ghcr.io/requarks/wiki:2.5@sha256:fa45e3d7a4fd80b6925aeb1c05e233e65c0cf6ec8b922546b807b9460426a4ec

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
