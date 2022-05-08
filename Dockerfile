FROM ghcr.io/requarks/wiki:2.5@sha256:340143254d67249b6a3e509c2cbb1fdcb083e02e36cc3c1ef4811263174c1d46

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
