FROM ubuntu:bionic
MAINTAINER roplyt-sogsep

RUN apt-get update\
 && apt-get install curl -y\
 && mkdir temp\
 && mkdir /urbit\
 && curl --output temp/archive.tgz https://bootstrap.urbit.org/urbit-v0.10.4-linux64.tgz\
 && tar xzf temp/archive.tgz -C temp/ \
 && rm temp/archive.tgz\
 && chmod -R 740 temp/urbit-v0.10.4-linux64/\
 && mv temp/urbit-v0.10.4-linux64/* /urbit/\
 && rm -rf temp/urbit-v0.10.4-linux64/
 
WORKDIR /urbit/ships
EXPOSE 8080
ENTRYPOINT ["/urbit/urbit"]
