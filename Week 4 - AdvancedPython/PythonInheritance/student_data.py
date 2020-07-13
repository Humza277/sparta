# parent class
class Student:
    # method initializes the variables
    def __init__(self, name, city, classes):
        self.name = name
        self.city = city
        self.classes = classes

    # method prints out the variable
    def printvalues(self):
        print("Your name is " + self.name)
        print("Your name is " + self.city)
        print("Your name is " + self.classes)


nvg = Student("Humza", "London", "Computer Science")
nvg.printvalues()
