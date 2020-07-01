# tuple - are immuable objects
# used to store data taht will not change
dob = ("name", "dob", "passport_number", )
#print(dob)

# cpnver the tuple into a list
# add your name into the string at 0 index
# display the list

#print(type(str(dob)))
nbob = list(dob)
nbob.insert(0, "Humza")
print(nbob)