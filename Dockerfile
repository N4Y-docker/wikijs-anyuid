FROM ghcr.io/requarks/wiki:2.5@sha256:af71a17dc27ccc4c768591b1c504631ed820d9d13d4e8c325be4232c0035638c

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
