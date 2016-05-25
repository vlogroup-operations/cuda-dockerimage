FROM nvidia/cuda:7.5-cudnn5-devel
MAINTAINER Christian Reinbacher <reinbacher@icg.tugraz.at>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    cuda-toolkit-7.5 \
    git \
    libopencv-dev \
    cmake \
    build-essential \
    openssh-client \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
