FROM ubuntu:16.04

USER root
WORKDIR /root

RUN apt-get update && apt-get install -y --no-install-recommends \
    supervisor \
    curl \
    iproute2 \
    iputils-ping \
    mininet \
    net-tools \
    tcpdump \
    vim \
    x11-xserver-utils \
    xterm \
    python-tk \
    wireshark \
 && rm -rf /var/lib/apt/lists/*
 
EXPOSE 6633 6653 6640
