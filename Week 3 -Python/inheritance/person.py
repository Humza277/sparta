class Person:
    def __init__(self, name, age=0):
        self.name = name
        self.__age = age

    def display(self):
        print(self.name)
        print(self.__age)


person = Person('John', 40)
# accessing using class method
person.display()
# accessing directly from outside
print('Trying to access variables from outside the class ')
print(person.name)
print(person.__age)

6
# If you really want to make a class member (member or variable) private in Python you can do it
# by prefixing a variable or method with double underscores. Here note that Python provides a limited support for
# private modifier using a mechanism called name mangling and it is still possible to access such class member from
# outside the class.

# In Python any identifier of the form __var (at least two leading underscores, at most one trailing underscore) is
# rewritten by the Python interpreter in the form _classname__var, where classname is the current class name. This
# mechanism of name changing is known as name mangling in Python.


8
# Why? Because encapsulation limits the interdependencies of different software components. Suppose we create a module.
# Our users could only interact with us through public APIs; they don’t care about the internals of this module.
# Even when the details of internals implementation changed, the user’s code doesn’t need a corresponding change.