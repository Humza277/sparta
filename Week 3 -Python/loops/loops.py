# while loops
# for loops are used to iterate through lists, strings , dictionarys, and tuples

list_data = [1, 2, 3, 4, 5]
for i in list_data:
    if i > 5:
        break
    print(i)

#Create a string and loop through the string

one_line =""
city = "london"
for l in city:
    one_line += " " + l
if l[-1] == l:
    print(one_line)