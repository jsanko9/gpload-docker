FROM centos

MAINTAINER <jsanko9@gmail.com>

ARG BIN_FILE=greenplum-loaders-5.17.0-rhel7-x86_64.zip

WORKDIR /build/

RUN yum install -y unzip which expect

COPY bin/$BIN_FILE /build/$BIN_FILE
COPY build_script.sh /build/build_script.sh

RUN unzip $BIN_FILE && mv `ls -1 *.bin` target.bin

RUN expect -f build_script.sh


