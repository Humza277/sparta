# dictionaries in python use a key pair syntax
# records = {1: "humza",
#            2: "anias",
#            3: ["string ", "tuples", "list"]}

# print(records)
# print(sorted(records))
# print(records.values())

# add two more topics
# records.keys
# records.values
# records[3].append("modo")
# records[3].append("builtin methods")
# # records[3] = ["list", "bullets"]
# #print(records[1], records[3])
# #print(records)
# print(records[3][2])

#for rec in records:
    #print(records)

# dictionary with 5 key pairs
# using loop iterate through the dictonary
# display the values
employees = {
    "dave" : 1,
    "jorge": 2,
    "willow": 3,
    "john": 4,
    "humza": 5
}
for key, val in employees.items():
    print(key, val)