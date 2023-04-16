FROM golang:1.17-bullseye

RUN apt-get update; \
    apt-get install -y build-essential autoconf libtool pkg-config libgflags-dev libgtest-dev clang libc++-dev wget; \
    wget https://github.com/protocolbuffers/protobuf/releases/download/v21.12/protobuf-all-21.12.tar.gz; \
    tar zxvf protobuf-all-21.12.tar.gz; \
    cd protobuf-21.12; \
    ./configure && make && make check && make install; \
    protoc --version