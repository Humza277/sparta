# what is control flow
# if else elif, for loop, while loop  - conditional statements and loops
weather = "sunny"
snow = "snow"
rain = "rain"
#if weather == "sunny":
    #print(" beach weather!")


# conditional block of code
# if weather == "sunny":
    # print(" beach weather!")
# else:
    # print("not beach weather")

# if weather != "sunny":
#     print(" beach weather!")
# else:
#     print("not beach weather")

ratings = ["U", "12a", "15", "18", "AO"]
# if age <= 17 cant watch rated 18 films
# if age 12 =< cant watch any movies above 12
# display messages accordingly

age = input("Please input age")
while ratings.__contains__("U"):
    if int(age) <= 17:
        print("You can watch the film")
    elif ratings:
        print("Underage")
    break

# while ratings.__contains__("U"):
#     if int(age) <= 17:
#         print("You can watch the film")
#     else:
#         print("Underage")
#     break