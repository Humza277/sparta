# how we can use the builtin library
# used in lottery system

from random import random
import math


# float_num = 24.5
#
# print(math.ceil(float_num))
# print(math.floor(float_num))
# print(math.pi)
# #print(random())

def cm_to_inch(number1, number2):
    return (number1 + number2) / 2.54


print(cm_to_inch(5, 8))


def inch_to_cm(number1, number2):
    return (number1 + number2) * 2.54


print(cm_to_inch(5, 8))

# create calculator
