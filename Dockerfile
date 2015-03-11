FROM ubuntu:trusty
MAINTAINER Chris Hardekopf <chrish@basis.com>

# Install duplicity from ppa
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    software-properties-common && \
    add-apt-repository -y ppa:duplicity-team/ppa && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y duplicity && \
    rm -rf /var/lib/apt/lists/*

# duplicity is the entry point
ENTRYPOINT [ "/usr/bin/duplicity" ]
