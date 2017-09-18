# docker images for app-server

This repository contains the `Dockerfiles` for the
[app-server](https://github.com/staticdeploy/app-server) docker images.

### Generic image

Latest version: `staticdeploy/app-server:latest`
Reference to a specific version: `staticdeploy/app-server:X.Y.Z`

#### Usage

Website `Dockerfile`:

```Dockerfile
FROM staticdeploy/app-server
WORKDIR /website-root
# Assuming there's a directory website containing your static assets
COPY website website-root
ENV APP_SERVER_ROOT /website-root
```

### Specialized `create-react-app` images

Latest versions:

- `staticdeploy/app-server:cra-builder`
- `staticdeploy/app-server:cra-runtime`

References to a specific version:

- `staticdeploy/app-server:X.Y.Z-cra-builder`
- `staticdeploy/app-server:X.Y.Z-cra-runtime`

#### Usage
CRA project `Dockerfile`:
```Dockerfile
FROM staticdeploy/app-server:cra-builder
FROM staticdeploy/app-server:cra-runtime
```
