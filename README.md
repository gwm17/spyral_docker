# spyral_docker

This repository contains a description to make a docker container with [attpc_spyral](https://github.com/ATTPC/Spyral) and [attpc_engine](https://github.com/ATTPC/attpc_engine) installed. It doesn't do anything else.

## How to use

Build and run like

```bash
docker build -t attpc_spyral .
docker run attpc_spyral
```

## Notes

When building for a ARM platform target, you'll need to add the following to the file

```txt
RUN apt install libhdf5-dev
```

as there are no pre-built h5py wheels for ARM. Specifically, this means if you're building a test for MacOS with Apple Silicon, you need to add this.