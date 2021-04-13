FROM python:3

COPY mac_address_getter.py /usr/src/app
COPY requirements.txt /usr/src/app

RUN pip install -r /usr/src/app/requirements.txt

# please replace values for <your_key_api> and <searched_MAC_address>
CMD [ "python", "/usr/src/app/mac_address_getter.py", "<your_key_api>", "<searched_MAC_address>" ]
