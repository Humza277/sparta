def add_values(number1, number2):
    return number1 + number2
    #
    #


def sub_values(number1, number2):
    return number1 - number2
    #
    #


def divide_values(number1, number2):
    return number1 / number2
    #
    #


def modo_values(number1, number2):
    if number1 % number2 == 0:
        print(True)
        return number1 % number2
    else:
        print(False)
        return number1 % number2


def multi_values(number1, number2):
    return number1 * number2


def area_of_triangle(number1, number2):
    return 0.5 * (number1 * number2)


def inch_to_cm(number1, number2):
    return (number1 + number2) * 2.54


def cm_to_inch(number1, number2):
    return (number1 + number2) / 2.54
