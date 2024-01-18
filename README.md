# To run locally:
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

# To manually run all tests:
- `poetry run pytest`

# To run test coverage report:
- `poetry run pytest --cov`

# To manually run linter on all files:
`poetry run pylint $(git ls-files '*.py')`

# To manually run formatter on all files:
- `poetry run black .`