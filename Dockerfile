FROM ghcr.io/requarks/wiki:2.5@sha256:824f077aaf1e926ae4ce70a3c00ee741daa37a05c52fb2f97c7745c9936787a5

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
