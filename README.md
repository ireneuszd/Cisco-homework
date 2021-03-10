To be able to run mac_address_getter.py script You should:

1) Create a docker Image from provided Dockerfile (before that You should replace values for <yours_key_api> and <searched_MAC_address> in dockerfile)
     docker build -t MAC-getter-image .
2) Once the image is created, your code is ready to be launched:
     docker run MAC-getter-image

Security issue:
Giving key_api as plain text via command line
