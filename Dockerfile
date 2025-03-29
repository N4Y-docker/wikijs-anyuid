FROM ghcr.io/requarks/wiki:2.5@sha256:a1ac7c317a52c80da0bfc5ee57b4f009b22ed322569e435f52c57c2f24c70d8a

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
