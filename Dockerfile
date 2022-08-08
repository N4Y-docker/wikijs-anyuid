FROM ghcr.io/requarks/wiki:2.5@sha256:348634c71e7dd14f83762f135e955eb04adc465c65d10a00df8ce13f241b1691

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
