FROM 0x01be/swift:prebuild as prebuild

WORKDIR /swift
RUN ./utils/build-toolchain be.0x01 || echo "OK"

