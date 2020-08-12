In the Python Week, We covered the basics going all the way to the four pillars of OOP

Basics:
Variables
For Loops
If - elif - when statements
List - Tuple -Dictionary - Sets
Strings -String casting 
Functions

Inheritance
    
    Inheritance is a way of creating a new class for using details of an existing class without modifying it. 
    The newly formed class is a derived class (or child class). 
    Similarly, the existing class is a base class(or parent class).
Abstraction
    
    Abstraction focuses on hiding the internal implementations of a process or method from the user. In this way, the user knows what he is doing but not how the work is being done.
    
    Using a car as an analogy. We drive without knowing what is going on underneath. We use the breaks to stop the car but we don't know how the breaks work.
    
    Another example is a TV set. We watch films without knowing the inner details of how TV works.
    
    In Python, abstraction is achieved by using abstract classes and interfaces.
    

Encapsulation
    
    Concept of encapsulation is to keep together the implementation (code) and the data it manipulates (variables).
    
    Python does not have the private keyword, unlike some other object oriented languages.
    
    In python, we can restrict access to methods and variables. This prevents data from being modified (encapsulation).
    
    In python, we denote private attributes using underscore _ or dunder (double underscore) __ as the prefix.
Polymorphism

    Poly means many
    
    Morph means change
    
    Polymorphism refers to the ability of an object taking many forms.
    
    Python being an OOP supports Polymorphism through Method overriding and operator overloading.
    
    Polymorphism can be achieved through inheritance - Method overriding
    
    Method overriding provides ability to change the implementation of a method in a child class which is already defined in one of its super class or parent class.
    
    If there is a method in a super class the method having the same name number of arguments in a child class is said to be overriding the parent class method.
    
    We can use the concept of polymorphism while creating class methods as Python allows different classes to have methods with the same name.
    
    We can then later generalise calling these methods by disregarding the object we are working with.

We used these basic principles in building applications that followed them:
    
    Fizzbuzz
    
    Calculator 
    
    DNA String Parsing
    
    Scrabble