FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York \
    KAGGLE_USERNAME=YOURUSERNAME \
    KAGGLE_KEY=YOURKEY

RUN apt-get update && apt-get install -y \
    python3 python3-dev gcc \
    python3-pip musl-dev g++ \
    libffi-dev openssl

COPY requirements.txt /root/requirements.txt
RUN python3 -m pip install -r /root/requirements.txt

COPY etl_part /usr/local/bin/etl_part

WORKDIR /data
ENTRYPOINT ["etl_part"]

