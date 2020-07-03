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

ratings = ["U", "PG", "12a", "15", "18"]
# if age <= 17 cant watch rated 18 films
# if age 12 =< cant watch any movies above 12
# display messages accordingly

age = int(input("Please input age"))
if  age >= 18:
    print('You can watch 18+ films', ratings)
elif  14 <age < 17:
    print("Not old enough to watch 18+ films, anything rated lower you can watch ", ratings[0:4])
elif 11< age <15:
    print("You can watch films rated 15 or lower ", ratings[0:3])
else:
    print("You can watch films rated 12 or lower", ratings[0:2])


# while ratings.__contains__("U"):
#     if int(age) <= 17:
#         print("You can watch the film")
#     else:
#         print("Underage")
#     break