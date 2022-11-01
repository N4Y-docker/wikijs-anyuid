FROM ghcr.io/requarks/wiki:2.5@sha256:a90c1b60631a788a0cd642e74b3d7ba8436729ae161956f1ac20102862fbdd6a

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
