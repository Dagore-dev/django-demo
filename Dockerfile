FROM python:3.10-alpine
ENV PYTHONUNBUFFERED 1

WORKDIR /demo

COPY poetry.lock .
COPY pyproject.toml .

RUN pip install poetry
RUN poetry install

COPY . .

CMD poetry run python manage.py runserver 0.0.0.0:80
