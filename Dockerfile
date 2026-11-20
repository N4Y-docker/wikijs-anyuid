FROM ghcr.io/requarks/wiki:3.5@sha256:3de0495234db06fc3ad78b8a6dc71ff297b55ed0d3b37d61eb0fbfe767f6e5b6

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
