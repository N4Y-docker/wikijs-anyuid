FROM ghcr.io/requarks/wiki:2.5@sha256:3d20706341a35b3f50d339d26e791b3e87d7cbc848bc002cf47a542ddf3dcd43

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
