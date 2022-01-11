FROM python:3.8

RUN pip install django
WORKDIR /app
COPY app /app

CMD ["python", "sample.py"]