FROM debian:bullseye-slim

ARG DART_VERSION=2.10.1

# Add Dart SDK and pub global binaries to PATH
ENV DART_SDK=/usr/lib/dart-sdk
ENV PATH="${PATH}:${DART_SDK}/bin:/root/.pub-cache/bin"

# Install exact Dart SDK version from the official archive and common tooling.
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates curl git unzip xz-utils && \
    rm -rf /var/lib/apt/lists/* && \
    curl -fsSL "https://storage.googleapis.com/dart-archive/channels/stable/release/${DART_VERSION}/sdk/dartsdk-linux-x64-release.zip" -o /tmp/dartsdk.zip && \
    unzip /tmp/dartsdk.zip -d /usr/lib && \
    rm -f /tmp/dartsdk.zip && \
    dart --version

WORKDIR /workspace