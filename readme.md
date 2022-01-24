# simple container that can run as any uid specified at runtime.

Images can be pulled from `ghcr.io/n4y-docker/wikijs-anyuid/wikijs-anyuid`.

Data directory volume needs to be mounted at `/wiki/data` and chowned to the user that the container is started as.
No privilege drop implemented as this is designed to not be lauched as root.
You will still need to define the user and group to run the container with as it defaults to root.
