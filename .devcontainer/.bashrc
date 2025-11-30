# Activate virtual environment on shell startup
if [ -f "/workspaces/.venv/bin/activate" ]; then
    source /workspaces/.venv/bin/activate
fi

# Aliases for common development commands
alias ruff='source .venv/bin/activate && ruff'
alias pytest='source .venv/bin/activate && pytest'
alias mypy='source .venv/bin/activate && mypy'
alias uv='source ~/.local/bin/uv'

# FastAPI specific aliases
alias run='source .venv/bin/activate && uvicorn app.main:app --reload'
