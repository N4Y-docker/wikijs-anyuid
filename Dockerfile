FROM ghcr.io/requarks/wiki:3.3@sha256:2bdfa19d02d3f0ce18020648cc38ca138c5467fe1cfc4765d4b5f2a59c8efcad

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
