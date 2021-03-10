import requests
import sys


class MacAddressApiClient():
    def __init__(self, api_key):
        self.api_key = api_key
        self.url = f"https://api.macaddress.io/v1"

    def get_mac_info(self, mac_address, output_type='vendor'):
        """Gets information about given MAC Address

        :param mac_address: MAC address
        :type mac_address: string
        :param output_type: output format (i.e. json, xml, csv, vendor)
        :type output_type: str
        :return: information about given MAC Address
        :rtype: str
        """
        get_url = f"{self.url}?apiKey={self.api_key}&output=" \
                  f"{output_type}&search={mac_address}"
        mac_info = requests.get(get_url)
        return mac_info.text


if __name__ == '__main__':
    if len(sys.argv) != 3:
        raise ValueError("Unsupported amount of arguments provided"
                         " (2 is demanded)")
    mac_client = MacAddressApiClient(sys.argv[1])
    mac_info = mac_client.get_mac_info(sys.argv[2])
    print(mac_info)
