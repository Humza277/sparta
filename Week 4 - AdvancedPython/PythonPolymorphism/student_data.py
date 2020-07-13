# parent class
class Student:
    # method initializes the variables
    def __init__(self, name, city, classes):
        self.name = name
        self.__city = city
        self.classes = classes

    # method prints out the variable
    def printvalues(self): #polymorphic method
        print("Your name is " + self.name)
        print("Your name is " + self.__city)
        print("Your name is " + self.classes)


s = Student("Humza", "London", "Computer Science")
s.printvalues()
