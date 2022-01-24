FROM ghcr.io/requarks/wiki:2.5@sha256:3622dfe5bb3df5be533766acbcbd8f49b2564101b78fa1c76c51bd6d23c9c187

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
