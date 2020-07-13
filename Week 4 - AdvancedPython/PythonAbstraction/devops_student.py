# Imports the student_data
from student_data import *


class DevOPs(Student):  # inherits abstraction characteristics from Student
    def names(self):
        print("this is an abstract method")

# calls the method
DevOPs.names("")