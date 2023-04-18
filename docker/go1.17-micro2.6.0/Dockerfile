FROM golang:1.17-bullseye

ENV TMP_PATH /tmp/.local
ENV PROTOC_VERSION 21.12

RUN apt-get update; \
    apt-get install -y build-essential autoconf libtool pkg-config libgflags-dev libgtest-dev clang libc++-dev unzip; \
    mkdir $TMP_PATH; \
    cd $TMP_PATH; \
    curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-aarch_64.zip; \
    unzip protoc-${PROTOC_VERSION}-linux-aarch_64.zip -d $TMP_PATH; \
    mv $TMP_PATH/bin/protoc /usr/local/bin/protoc; \
    protoc --version; \
    go install github.com/micro/micro/v2/cmd/protoc-gen-micro@v2.6.0; \
    go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.21.0; \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2.0
