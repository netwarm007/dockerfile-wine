FROM ubuntu:latest
MAINTAINER Chen, Wenli <chenwenli@chenwenli.com>

RUN \
 dpkg --add-architecture i386 \
 && apt-get -qq update && apt-get -qqy install --no-install-recommends \
	software-properties-common \
 && add-apt-repository ppa:wine/wine-builds \
 && apt-get -qq update \
 && apt-get -qqy install --no-install-recommends winehq-devel \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* 

CMD ["/bin/bash"]

