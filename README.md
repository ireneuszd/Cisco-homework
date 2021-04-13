To be able to run mac_address_getter.py script You should:

1) Create a docker Image from provided Dockerfile (before that You should replace values for <yours_key_api> and <searched_MAC_address> in Dockerfile)
   
   COMMAND: docker build -t MAC-getter-image .
2) Once the image is created, code is ready to be launched (add your <api_key> and <mac_address>):

   COMMAND: docker run MAC-getter-image <api_key> <mac_address>

Security issue:
1) Giving key_api as plain text via command line
