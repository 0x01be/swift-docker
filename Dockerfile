FROM 0x01be/ninja as build

WORKDIR /swift
ENV REVISION=main
RUN apk add --no-cache --virtual swift-build-dependencies \
    git \
    build-base \
    clang \
    cmake \
    bash \
    zlib-dev \
    libxml2-dev \
    python3 \
    py3-six \
    py3-psutil &&\
    ln -s /usr/bin/python3 /usr/bin/python &&\
    ln -s /opt/ninja /ninja &&\
    git clone --depth 1 --branch ${REVISION} https://github.com/apple/swift.git /swift &&\
    git clone --depth 1 https://github.com/commonmark/cmark.git /cmark &&\
    git clone --depth 1 https://github.com/llvm/llvm-project.git /llvm-project &&\
    git clone --depth 1 https://github.com/unicode-org/icu.git /icu &&\
    git clone --depth 1 https://github.com/apple/swift-corelibs-libdispatch.git /swift-corelibs-libdispatch &&\
    git clone --depth 1 https://github.com/apple/swift-corelibs-foundation.git /swift-corelibs-foundation &&\
    git clone --depth 1 https://github.com/apple/swift-corelibs-xctest.git /swift-corelibs-xctest &&\
    git clone --depth 1 https://github.com/apple/swift-llbuild.git /llbuild

