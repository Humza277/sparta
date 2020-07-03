import requests

response_bbc = requests.get("https://www.bbc.co.uk")


def check_response_code():
    if response_bbc.status_code == 200:
        print("Success")
    elif response_bbc.status_code == 400:
        print("page not found")
    elif response_bbc.status_code == 404:
        print("something went wrong")
    else:
        print("error code not found")


check_response_code()
