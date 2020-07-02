# create classmethod
#
import functions

class Python_Calculator:
    # def calculate(self):
    number_1 = int(input("Please input your first number"))
    number_2 = int(input("Please input your first number"))
    user_input = input("Please input what you want to do: + - * / %")

    if user_input == "+":
        print(str(number_1) + " Plus " + str(number_2) + " equals: ",  functions.add_values(number_1, number_2))
    elif user_input == "-":
        print(str(number_1) + " Minus " + str(number_2) + " equals: ", functions.sub_values(number_1, number_2))
    elif user_input == "*":
        print(str(number_1) + " Times " + str(number_2) + " equals: ", functions.multi_values(number_1, number_2))
    elif user_input == "/":
        print(str(number_1) + " Divide " + str(number_2) + " equals: ", functions.divide_values(number_1, number_2))
    elif user_input == "%":
        print(str(number_1) + " Mod " + str(number_2) + " equals: ", functions.modo_values(number_1, number_2))
    else:
        print("You have entered an unknown value")

print(Python_Calculator)
