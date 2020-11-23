# Arrays in Python
print("Arrays in Python")
print("--------------------")

# 1. What types are legal for subscripts?
# In Python only integers and slices are allowed for index (substript) types.
# In the case of dictionaries and tuples since they also use the "[]" subscript notation
# strings are also accepted.
fruits = ["apple", "pear", "banana", "cherry", "orange"]

print("The first element is: " + fruits[0])
print("The second element is: " + fruits[1])
print("The third element is: " + fruits[2])
print("The fourth element is: " + fruits[3])
print("The fifth element is: " + fruits[4])

fruits[2] = "pomegranate"
print("The third element is: " + fruits[2])
print("--------------------")

# 2. Are subscripting expressions in element references range checked?
# Index range checking is supported in Python and Python supports
# negative indexing. If i is negative, len(list) + i is substituted.
print("fruits[-3] = 5 - 3 = fruits[2] = " + fruits[-3] + " is the third element.")
print(fruits[-3+1] + " is the fourth element (5 + (-3 + 1)).")
print("--------------------")

# 3. When are subscript ranges bound?
# Python supports heap-dynamic arrays therefore binding
# of subscript ranges is dynamic and bound at runtime.
lst = [1, 2, 3]
print(lst)
print("--------------------")

# 4. When does allocation take place?
# Python supports heap-dynamic arrays therefore storage allocation is
# dynamic and can change any number of times and it takes place at runtime.
grades = [73, 91, 76, 61, 57, 25]
print(grades)

grades = ["b+", "a", "b+", "b", "c+", "d"]
print(grades)
print("--------------------")

# 5. Are ragged or rectangular multidimensional arrays allowed, or both?
# Python supports jagged arrays but not rectangular arrays.
rectangular = [[1,2], [3,4], [5,6]]
ragged = [[1], [2, 3], [4, 5, 6]]

print("This is a ragged array")
print('\n'.join([''.join(['{:4}'.format(item) for item in row])
      for row in rectangular]))

print("\nThis is a ragged array")
print('\n'.join([''.join(['{:4}'.format(item) for item in row])
      for row in ragged]))
print("--------------------")

# 6. What is the maximum number of subscripts?
# Python has no limit for the maximum number of subscripts.
print "The first element is: " + fruits[0]
print "The element at [2][1] in ragged array]: ", rectangular[2][1]
print("--------------------")

# 7. Can array objects be initialized?
# Array objects can be initialized in Python.
array = ['d', [1.1, 3.5, 4.5], "Steve"]
print(array)

# Dynamic content initialization:
array2 = [ x * 2 + 3 for x in range ( 30 ) ]
print(array2)
print("--------------------")

# 8. Are any kind of slices supported?
# Python supports slices.
vector = [2, 4, 6, 8, 10, 12, 14, 16]
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

print "Sliced array between the 4th element and the 5th element is: ", vector[3:6]
print "Sliced 2D array between the 0th row and the first two columns is: ", matrix[0][0:2]
