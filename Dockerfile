FROM python:3.8

WORKDIR /usr/src/app

COPY . .

CMD ["python", "./louis.py"]

