FROM ghcr.io/requarks/wiki:2.5@sha256:99f465dc4443f4a6891af55a87adad499f17396901a5e06b37965fe92ba6ec46

LABEL org.opencontainers.image.source https://github.com/N4Y-docker/wikijs-anyuid

USER 0:0

RUN find . -type d -exec chmod 0555 {} \; \
&& find . -type f -exec chmod a+r-w {} \;
