FROM ubuntu:20.04 as base

RUN apt-get update -q \
    && DEBIAN_FRONTEND="noninteractive" \
    apt-get install -yq \
    python3.10 \
    python3-pip

RUN pip install \
    tensorflow \
    jaseci \
    jaseci_kit \
    jaseci_serv

WORKDIR "/jaseci"

COPY . .


