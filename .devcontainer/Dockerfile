FROM mcr.microsoft.com/devcontainers/python:3.11

# Install additional system dependencies and uv
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install uv package manager
RUN pip install uv
