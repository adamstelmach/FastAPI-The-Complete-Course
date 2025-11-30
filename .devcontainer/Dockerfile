FROM mcr.microsoft.com/devcontainers/python:3.12

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

USER vscode
WORKDIR /workspaces

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/home/vscode/.local/bin:${PATH}"

# These are duplicated in devcontainer.json containerEnv, but it's also fine here.
# If you prefer single source of truth, you can keep them only in one place.
ENV UV_LINK_MODE="copy"
ENV UV_PROJECT_ENVIRONMENT=".venv"

# Add shell aliases for development tools
RUN echo '# Development aliases' >> /home/vscode/.bashrc && \
    echo 'alias ruff=". .venv/bin/activate && ruff"' >> /home/vscode/.bashrc && \
    echo 'alias pytest=". .venv/bin/activate && pytest"' >> /home/vscode/.bashrc && \
    echo 'alias mypy=". .venv/bin/activate && mypy"' >> /home/vscode/.bashrc && \
    echo 'alias run=". .venv/bin/activate && uvicorn app.main:app --reload"' >> /home/vscode/.bashrc && \
    echo 'alias usync="uv sync --all-extras"' >> /home/vscode/.bashrc