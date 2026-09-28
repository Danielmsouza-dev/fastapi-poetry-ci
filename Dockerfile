FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir poetry==2.2.1

COPY pyproject.toml ./
RUN poetry config virtualenvs.create false \
    && poetry install --only main --no-root --no-interaction

COPY app.py ./

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
