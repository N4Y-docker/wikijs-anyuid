FROM ghcr.io/requarks/wiki:2.5@sha256:f48eccd2dcfabc2b8d30277955d67be441f24a75d14a149c578cb7b722897d8c

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
