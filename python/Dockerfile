FROM python:latest

WORKDIR /code
COPY requirements.txt .
COPY src/ .

RUN pip install -r requirements.txt

CMD ["python", "main.py"]
