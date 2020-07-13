class Calc:

    def add(self, num1, num2):
        return num1 + num2

    def sub(self, num1, num2):
        return num1 - num2

    def multi(self, num1, num2):
        return num1 * num2

    def divide(self, num1, num2):
        return num1 / num2

    def cmtoInch(self, num1):
        return num1 / 2.54

    def mod(self, num1, num2):
        return  num1 % num2

c = Calc()
c.add(3, 5)