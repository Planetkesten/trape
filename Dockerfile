FROM python:3.8-alpine

# Build dependencies
RUN apk add --no-cache build-base gcc

# Layer caching
COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /opt/trape
WORKDIR /opt/trape

CMD ["python", "trape.py"]
