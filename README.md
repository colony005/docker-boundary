# Docker Boundary

A Dockerfile for the boundary.com agent

## Building

To build this, you should create your own Dockerfile that is based on this image and provide your custom `INSTALLTOKEN`

```docker
FROM pguelpa/boundary

ENV INSTALLTOKEN <OrganizationID>:<API Key>
ENV PROVISIONHOSTNAME gopher
```

## Running

In order to capture network information, this container must be run with the `--net=host` flag.

`docker run --net=host -i -t boundary`
