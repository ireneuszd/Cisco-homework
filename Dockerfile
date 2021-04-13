FROM python:3.9-alpine

WORKDIR /usr/src/app

COPY mac_address_getter.py ./
COPY requirements.txt ./

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "mac_address_getter.py"]
