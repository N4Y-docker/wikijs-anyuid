FROM ghcr.io/requarks/wiki:2.5@sha256:91901bb690a81e4b6188137026f5101d6482957f047df7f707ccb41a1d70851b

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
