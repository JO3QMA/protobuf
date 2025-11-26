FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install buf CLI
RUN curl -sSL "https://github.com/bufbuild/buf/releases/latest/download/buf-Linux-x86_64" -o "/usr/local/bin/buf" && \
    chmod +x "/usr/local/bin/buf"

# Install protoc (Protocol Buffer Compiler)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    protobuf-compiler \
    && rm -rf /var/lib/apt/lists/*

# Verify installations
RUN buf --version && \
    protoc --version

