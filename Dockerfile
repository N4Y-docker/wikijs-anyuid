FROM ghcr.io/requarks/wiki:2.5@sha256:62d367912b8e89d7c12afea7ec2471f32cf23534d3f378f12f09928e77727ec5

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
