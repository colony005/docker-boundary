# Docker Boundary

A Dockerfile for the boundary.com agent

## Building

To build this, you should create your own Dockerfile that is based on this image and provide your custom `env` file which exports any installer environment variables you want. At a minimum, you must provide `APICREDS`. You may also provide additional installer variables in the same way (for a list of variables see: https://app.boundary.com/docs/meter/installer_variables)

Docker File

```docker
FROM pguelpa/boundary
```

Env File

```bash
export APICREDS=my-org-id:my-api-key
```

## Running

In order to capture network information, this container must be run with the `--net=host` flag.

`docker run --net=host <my-namespace>/boundary`
