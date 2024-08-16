# spyral_docker

This repository contains a description to make a docker container with attpc_spyral installed. It doesn't do anything else.

## How to use

Build and run like

```bash
docker build -t spyral
docker run --mount=type=bind,source=my_script.py,target=/spyral/my_script.py spyral my_script.py
```

The mount is to attach your specific analysis script.