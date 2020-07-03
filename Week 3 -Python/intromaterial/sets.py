# very simmilar to sets
# whats the difference
# We use {} breakets as the syntax

car_par = {"wheels", "subwoofer", "doors"}
print(car_par)

#What can we do with sets
car_par.add("seats")
car_par.discard("wheels")
print(car_par)

#Frozen set - are immuteable
# () store them in a variable first

counting = frozenset([1, 2, 3, 4])
print(counting)
