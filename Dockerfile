ARG PYTHON_VERSION=3.12.5
FROM python:${PYTHON_VERSION}-slim AS base

WORKDIR /spyral

ENV PYTHONWRITEBYTECODE=1

RUN apt update && apt install -y pkg-config g++

COPY ./requirements.txt ./
COPY ./hello.py ./

RUN python -m pip install --no-cache-dir --upgrade pip  && \
    python -m pip install --no-cache-dir -r requirements.txt

# Note that because we typically actually target apptainer in Polaris
# we rarely ever use the default CMD and it is just here for completeness
CMD [ "python", "./hello.py"]