FROM python:3.10

SHELL ["/bin/bash", "--login", "-c"]

WORKDIR /app

COPY . .

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN uv sync

CMD uv run python /app/app.py --host=0.0.0.0 --port=8080

