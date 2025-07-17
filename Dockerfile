# syntax=docker/dockerfile:1

FROM python:3.11-slim

WORKDIR /app

# Copy requirement list and install
COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY src/ /app

EXPOSE 80

# Launch the app using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]
