# Imports the student_data
from student_data import *


class DevOPs(Student):  # inherits characteristics from Student
    def __init__(self, name, city, classes, sql):
        super().__init__(name, city, classes)
        self.sql = sql  # unique to devops only

    def printvalues(self): #polymorphic method
        return "You have learned " + self.sql


d = DevOPs("Humza", "London", "Computer Science", "SQL")
print(d.printvalues())
#d.printvalues()
