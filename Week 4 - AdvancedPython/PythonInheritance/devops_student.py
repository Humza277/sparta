# Imports the student_data
from student_data import *


class DevOPs(Student):  # inherits characteristics from Student
    def __init__(self, name, city, classes, sql):
        super().__init__(name, city, classes)
        self.sql = sql  # unique to devops only

    def printdevops(self):  # method is unique to Person
        self.printvalues()
        print("You have learned " + self.sql)


d = DevOPs("Humza", "London", "Computer Science", "SQL")
d.printdevops()
