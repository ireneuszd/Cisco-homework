FROM python:3.9-alpine

WORKDIR /usr/src/app
COPY mac_address_getter.py ./
COPY requirements.txt ./

RUN pip install -r requirements.txt

# please replace values for <your_key_api> and <searched_MAC_address>
CMD [ "python", "mac_address_getter.py", "<your_key_api>", "<searched_MAC_address>" ]
