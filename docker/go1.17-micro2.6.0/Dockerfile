FROM golang:1.17-bullseye

ENV TMP_PATH /tmp/uve_core_install

RUN apt-get update; \
    apt-get install -y build-essential autoconf libtool pkg-config libgflags-dev libgtest-dev clang libc++-dev protobuf-compiler protobuf-c-compiler wget; \
    mkdir $TMP_PATH; \
    cd $TMP_PATH; \
    wget https://github.com/protocolbuffers/protobuf/releases/download/v21.12/protobuf-all-21.12.tar.gz; \
    tar zxvf protobuf-all-21.12.tar.gz; \
    cd protobuf-21.12; \
    ./autogen.sh && ./configure && make && make check && make install; \
    protoc --version