# FastAPI - The Complete Course

**Original Course:** Created by Eric Roby  
**Forked & Enhanced by:** Adam Stelmach

## Overview

Complete FastAPI course with modern development setup including dev container, uv package manager, and comprehensive tooling.

## Prerequisites

- Docker
- Docker Compose
- VS Code with Dev Containers extension

## Quick Start

### Using Dev Container (Recommended)

1. Clone this project in VS Code
2. Install the "Dev Containers" extension if not already installed
3. When prompted, click "Reopen in Container"
4. Wait for the container to build and dependencies to install

### Local Setup (Without Dev Container)

1. Create a virtual environment:

   ```bash
   python -m venv .venv
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   ```

2. Install dependencies with uv:

   ```bash
   pip install uv
   uv pip install -e '.[dev]'
   ```

## Running the Application

```bash
uvicorn app.main:app --reload
```

The API will be available at `http://localhost:8000`

API documentation:

- Swagger UI: `http://localhost:8000/docs`
- ReDoc: `http://localhost:8000/redoc`

## Testing

Run tests with pytest:

```bash
pytest tests -v
```

## Project Structure

```bash
fastapi-udemy-course/
├── .devcontainer/          # Dev container configuration
├── Project 1-5/            # Course projects
├── PythonRefresher/        # Python learning materials
├── Database Scripts/       # SQL scripts
├── app/                    # Application code
├── tests/                  # Test files
├── pyproject.toml          # Project configuration with uv
└── README.md              # This file
```

## Available Scripts

- **Format code:** `black .`
- **Lint code:** `ruff check .`
- **Type check:** `mypy app`
- **Run tests:** `pytest tests -v`

## Environment Variables

Create a `.env` file in the project root:

```bash
DATABASE_URL=sqlite:///./test.db
DEBUG=True
SECRET_KEY=your-secret-key-here-change-in-production
```

## Development Tools

- **fastapi** - Web framework
- **uvicorn** - ASGI server
- **pydantic** - Data validation
- **sqlalchemy** - ORM
- **pytest** - Testing framework
- **black** - Code formatter
- **ruff** - Linter
- **mypy** - Type checker
- **uv** - Fast Python package manager

## License

This project is for educational purposes.

