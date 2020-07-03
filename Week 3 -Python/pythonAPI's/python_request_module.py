# what is an api
# application programming interface
# why - used to connect other programs
# in python we have a module called requests to interact with web-apis
# how can we install python packages in pycharm
# pip install requests

import requests
from status_codes import check_response_code

response_bbc = requests.get("https://www.bbc.co.uk")
#print(response_bbc.status_code)


# print(response_bbc)
# print(response_bbc.headers)
# print(type(response_bbc.headers))
# print(print(response_bbc.content))

# Iteration 1
# receive a response and check if 200 - print success
# elif code 400 - page not found
# else code 404 - OOPs sorry something went wrong
# 2ne Iteration
# create a function called check_response_code() including all the above
# returns the message with status code
# 3rt Iteration? OOP with 4 pillars.

# step1

# if response_bbc.status_code == 200:
#     print("Success")
# elif response_bbc.status_code == 400:
#     print("page not found")
# elif response_bbc.status_code == 404:
#     print("something went wrong")
# else:
#     print("error code not found")

# def check_response_code():
#     if response_bbc.status_code == 200:
#         print("Success")
#     elif response_bbc.status_code == 400:
#         print("page not found")
#     elif response_bbc.status_code == 404:
#         print("something went wrong")
#     else:
#         print("error code not found")

class Response:
    check_response_code()


Response()
