FROM 0x01be/prebuild as prebuild

WORKDIR /swift
RUN ./utils/build-toolchain be.0x01 || echo "OK"

