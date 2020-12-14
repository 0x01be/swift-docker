FROM 0x01be/swift:build as build

FROM 0x01be/base

COPY --from=build /swift/swift-nightly-install/ /opt/swift/

ENV PATH=${PATH}:/opt/swift/bin

