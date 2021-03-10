FROM python:3

COPY . /usr/src/app

CMD [ "python", "./usr/src/app/Mac_address_getter.py" "<yours_key_api>", "<searched_MAC_address>" ]
