FROM dart:2.18.7

# Add pub global binaries to PATH
ENV PATH="$PATH:/root/.pub-cache/bin"

# Install webdev and build_runner globally
RUN dart pub global activate webdev && \
    dart pub global activate build_runner

WORKDIR /workspace