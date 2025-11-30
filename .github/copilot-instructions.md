<!-- Use this file to provide workspace-specific custom instructions to Copilot. -->

# FastAPI Course Development

## Project Overview
This is a FastAPI learning project for the Udemy course. The project uses a dev container for consistent development environment across all machines.

## Development Setup
- **Language**: Python 3.11
- **Framework**: FastAPI
- **Dev Container**: Enabled via `.devcontainer/devcontainer.json`
- **API Server**: Uvicorn
- **Testing**: pytest
- **Code Quality**: Black, Ruff, Pylint, MyPy

## Code Style Guidelines
- Use Black for code formatting (line length: 88)
- Use Ruff for linting
- Type hints are required for all functions
- Follow PEP 8 standards

## Running the Application
```bash
uvicorn app.main:app --reload
```

## Running Tests
```bash
pytest tests -v
```

## Dev Container Usage
1. Open the workspace in VS Code
2. When prompted, "Reopen in Container" to use the dev container
3. All dependencies will be automatically installed via `postCreateCommand`
