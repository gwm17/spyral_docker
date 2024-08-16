ARG PYTHON_VERSION=3.12.5
FROM python:${PYTHON_VERSION}-slim AS base

WORKDIR /spyral

RUN apt update && apt install -y pkg-config g++ libhdf5-dev

RUN --mount=type=cache,target=/root/.cache/pip \
    --mount=type=bind,source=requirements.txt,target=requirements.txt \
    python -m pip install --upgrade pip  && \
    python -m pip install -r requirements.txt

ENTRYPOINT [ "python" ]