# create classmethod

# imports the function class
from operators import *


class Python_Calculator:
    # def calculate(self):
    # input the first number
    number_1 = int(input("Please input your first number (base if looking for area)"))
    # input the second number
    number_2 = int(input("Please input your first number (height if looking for area)"))
    # input the operator
    user_input = input("Please input what you want to do: +\n -\n *\n /\n %\n area\n inch\n cm\n")

    # if operator is +
    if user_input == "+":
        print(str(number_1) + " Plus " + str(number_2) + " equals: ", operators.add_values(number_1, number_2))
    # if operator is -
    elif user_input == "-":
        print(str(number_1) + " Minus " + str(number_2) + " equals: ", operators.sub_values(number_1, number_2))
    # if operator is *
    elif user_input == "*":
        print(str(number_1) + " Times " + str(number_2) + " equals: ", operators.multi_values(number_1, number_2))
    # if operator is /
    elif user_input == "/":
        print(str(number_1) + " Divide " + str(number_2) + " equals: ", operators.divide_values(number_1, number_2))
    # if operator is %
    elif user_input == "%":
        print(str(number_1) + " Mod " + str(number_2) + " is: ", operators.modo_values(number_1, number_2))
    # if operator is area
    elif user_input == "area":
        print("0.5 " + str(number_1) + " * " + str(number_2), operators.area_of_triangle(number_1, number_2))
    # if operator is inch
    elif user_input == "inch":
        print(str(number_1) + str(number_2) + " * 2.54", operators.inch_to_cm(number_1, number_2))
    # if operator is cm
    elif user_input == "cm":
        print(str(number_1) + str(number_2) + " / 2.54", operators.cm_to_inch(number_1, number_2))

    # if operator is unknown
    else:
        print("You have entered an unknown value")


# print out the result of the above code
Python_Calculator
