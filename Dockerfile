FROM ghcr.io/requarks/wiki:2.5@sha256:726daf1a1c7241bc4a51c8e5d666784b15b2acf526b3a03185e386b5047a2e91

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
