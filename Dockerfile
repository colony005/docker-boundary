# Dockerfile for Boundary agent
FROM debian:jessie

MAINTAINER Paul Guelpa

# You need to specify your install token
# ENV INSTALLTOKEN <OrganizationID>:<API Key>

# You can optionally add any environment variables you want to use in the install script
# ENV PROVISIONHOSTNAME <gopher>

ADD ./setup_meter.sh /tmp/setup_meter.sh

ONBUILD RUN /tmp/setup_meter.sh -s -i $INSTALLTOKEN

CMD -I bprobe
ENTRYPOINT /usr/bin/bprobe