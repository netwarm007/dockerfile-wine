FROM ubuntu:latest
MAINTAINER Chen, Wenli <chenwenli@chenwenli.com>

RUN apt-get -qq update && apt-get -qqy install --no-install-recommends \
	wine \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* 

CMD ["/bin/bash"]

