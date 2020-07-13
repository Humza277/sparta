# parent class
class Student:
    # method initializes the variables

    __city = ""  # made private
    __name = ""  # made private

    def __init__(self, classes):
        self.__name = "Humza"
        self.__city = "London"
        self.classes = classes

    # method prints out the variable
    def printvalues(self):
        print("Your name is " + self.__name)
        print("Your name is " + self.__city)
        print("Your name is " + self.classes)


gd = Student("Computer Science")
gd.printvalues()
print("Space")
gd.__name = "bob"
gd.__city = "Paris"
gd.printvalues()
