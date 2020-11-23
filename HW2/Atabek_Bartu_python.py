# Counter-Controlled Loops in Python
# Since Python's native count controlled loop does not have the traditional
# C-style for loop structure but instead it has structure similar to for each loop.
print("Counter-Controlled Loops in Python")
print("--------------------")

# 1. What are the types of loop control variables?
# Considering the object as the loop control variable it could be any iterable
# object type such as strings, arrays, tuples and dictionaries. On the other hand
# the loop variable takes on the values specified in the given range one for
# each iteration therefore they have the same type of the object which
# could be any type.

# for loop iterating over an array
array = ["apple", 3.14, 'bartu', 10, 2+5j, -9, "Steve".isalnum()]
for element in array:
    print(element),

print("\n")

# for loop iterating over dictionaries key-value pairs
car = {
  "brand": "Tesla",
  "model": "Roadster",
  "year": 2020
}

for key, value in car.items():
  print(key, value),

print("\n")

# for loop iterating over range of numbers between [1,10)
for number in range(1,10):
		print(number),

print("\n")

# for loop iterating over a string
for char in "Hello World":
    print(char),

print("\n--------------------")

# 2. What are the scopes of loop control variables?
# Loop control variables; the loop variable and the object in Python can be
# accessed both locally in the loop scope and can be accessed out of the scope
# in the global namespace.

for number in range(1,10):
		print(number),

print("\nThe number was: " + str(number))
number += 1
print("The number is: " + str(number))

print("--------------------")

# 3. Is it legal for the loop control variable or loop parameters to be
# changed in the loop, and if so, does the change affect loop control?
# In Python it is legal for the loop control variables and the loop parameters
# to be changed in the loop and the change affects the loop control i.e.
# appending elements to a collection will change the number of iterations. Also,
# changing the loop variable will effect the output results too.

# changing loop variable inside the loop results all outputs to become '99'
for i in range(5):
    i = 99
    print("i is now: " + str(i))

print("\n")

# changing the object collection inside the array will reflect the new elements
# to be iterated as well.
isAppended = 0
colors = ["red", "blue", "green"] # should iterate 3 times
for color in colors:
    if isAppended == 0:
        colors.append("magenta") # appended element is also iterated
        isAppended = 1
    print(color),

print("\n--------------------")

# 4. Are the loop parameters evaluated only once, or once for every iteration?
# In Python, the for construct is a single evaluation at the start is done which
# means that the creation of the loop objects are done once such as in range
# however, the loop variable is assigned in each iteration to the next element
# until the end of the collection is reached.

for number in range(13): # generate numbers 0 to 12 once at the start
    # calculation is done in every iteration
    print(str(number) + '\t' + str(2**number))
