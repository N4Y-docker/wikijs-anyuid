FROM ghcr.io/requarks/wiki:2.5@sha256:38e156e24e6020598ef523cca453444c5d4952f9f237d63252aeb1cd3bf288df

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
