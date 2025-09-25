FROM python:3.11-slim AS builder
WORKDIR /install
COPY requirements.txt .

RUN pip install --upgrade pip setuptools wheel \
    && pip install --no-cache-dir --prefix=/install -r requirements.txt

FROM python:3.11-slim-buster AS final
WORKDIR /app

COPY --from=builder /install /usr/local
COPY app.py .

EXPOSE 5000
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]
