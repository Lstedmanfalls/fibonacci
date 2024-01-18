## Local Development

### To run locally:
1) Make sure you have pipx and poetry installed
- `pip install pipx`
- `pipx install poetry`
1) Create a virtual environment (use python3 instead of python if on a mac)
- `python -m venv venv`
2) Activate the environment
- `source venv/Scripts/activate`
2) Install all dependencies, including dev
- `poetry install --with dev`
3) Start the application server
- `docker compose up`
4) To view the openapi docs
- Go to 127.0.0.1/docs
5) To deactivate the environment
- `deactivate`

**Note, you must have the venv activated when you commit in order for the pre-commit tests to run

### To manually run all tests:
- `poetry run pytest`

### To run test coverage report:
- `poetry run pytest --cov`

### To manually run linter on all files:
`poetry run pylint $(git ls-files '*.py')`

### To manually run formatter on all files:
- `poetry run black .`

## Poetry-managed packages
- To add a new dependency
`poetry add <package>`
- To add a new dev dependency
`poetry add <package> --group dev`
- To remove a dependency
`poetry remove <package>`
- To remove a dev dependency
`poetry remove <package> --group dev`
- To sync poetry lock
`poetry lock`