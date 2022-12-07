FROM python:3.7-slim

COPY requirements.txt /app/
WORKDIR /app

RUN pip install --upgrade pip \
    &&  pip install --requirement requirements.txt

COPY app.py .

CMD ["python", "app.py"]
