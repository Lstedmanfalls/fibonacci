FROM python:3.12 as python-base
ENV POETRY_VERSION=1.7.1
ENV POETRY_HOME=/opt/poetry
ENV POETRY_VENV=/opt/poetry-venv
ENV POETRY_CACHE_DIR=/opt/.cache

FROM python-base as poetry-base
RUN python -m venv $POETRY_VENV \
  && $POETRY_VENV/bin/pip install -U pip setuptools \
  && $POETRY_VENV/bin/pip install poetry==${POETRY_VERSION}

FROM python-base as runner
COPY --from=poetry-base ${POETRY_VENV} ${POETRY_VENV}
ENV PATH="${PATH}:${POETRY_VENV}/bin"
WORKDIR /app
COPY poetry.lock pyproject.toml README.md ./
RUN poetry check
RUN poetry install --no-interaction --no-cache --without dev
COPY . /app

