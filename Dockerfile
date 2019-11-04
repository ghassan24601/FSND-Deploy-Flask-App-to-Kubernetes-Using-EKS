FROM python:stretch

RUN mkdir /opt/bin

WORKDIR /opt/bin

COPY requirements.txt .
COPY main.py .

RUN python3 -m pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
