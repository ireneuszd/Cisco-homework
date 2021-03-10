FROM python:3

COPY . /usr/src/app

# please replace values for <yours_key_api> and <searched_MAC_address>
CMD [ "python", "./usr/src/app/Mac_address_getter.py" "<yours_key_api>", "<searched_MAC_address>" ]
