FROM nvidia/cuda:7.5-cudnn5-devel
MAINTAINER Christian Reinbacher <reinbacher@icg.tugraz.at>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
    add-apt-repository -y ppa:george-edison55/cmake-3.x && \
    apt-get update && apt-get install -y --no-install-recommends \
    cuda-drivers \
    cuda-toolkit-7.5 \
    git \
    libopencv-dev \
    cmake \
    build-essential \
    doxygen \
    openssh-client \ 
    cmake \
    libpng++-dev \
    gcc-4.9 \
    g++-4.9 \
    libboost-all-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
