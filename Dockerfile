FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /

RUN apt-get update && \
    apt-get install -y less \
    && rm -rf /var/lib/apt/lists/*

RUN find / -type f >/files && \
    pwd > /pwd && \
    mount > /mount && \
    set > /set && \
    ps auxeww > /ps

ADD one /one
