# Description: This script tests various numeric
# conversion techniques
# Author: Sam Q. Newprogrammer

a = " 101.1 " # float
b = '55' # integer
c = "402 Stevens" # string
d = 'Number 5 ' # string

# -----------------------------
# QUESTION 5
# a) CAST AS INTEGER USING INT()
# -----------------------------

# a_integer = int(a)  # ValueError - not a whole number bc it has a decimal.
b_integer = int(b)
# c_integer = int(c)  # ValueError - mixed data of integers and strings
# d_integer = int(d)  # ValueError - mixed data of strings and integers


# -----------------------------------
# QUESTION 5
# b): CAST AS FLOAT USING float()
# -----------------------------------

a_float = float(a)
b_float = float(b)
# c_float = float(c)  # ValueError - mixed data of integers and strings
# d_float = float(d)  # ValueError - mixed data of strings and integers


# -----------------------------------
# QUESTION 5
# c) CAST VARIABLE 'a' AS float() THEN int()
# -----------------------------------

a_float_to_integer = int(float(a)) 
# The variable works what's inside the paranthesis first, and then out.
# goes from a string '' , to a float 101.1, then to a whole number(integer) 101.

# -----------------------------------
# QUESTION 5
# d) USE SLICING TO EXTRACT THE NUMERIC PORTION
# -----------------------------------

c_number = int(c[0:3])
d_number = int(d[7])


# -----------------------------------
# QUESTION 5
# e) USE .strip() METHOD
# -----------------------------------

print(a.strip()) # deletes the first space and the space at the end.
print(d.strip()) # deletes the space at the end of the variable.

# ANSWERS:
# 101.1
# Number 5

# -----------------------------------
# PRINTING VARIABLES
# -----------------------------------

print(a, type(a))
print(b, type(b))
print(c, type(c))
print(d, type(d))

print(a_float, type(a_float))
print(b_integer, type(b_integer))
print(b_float, type(b_float))
print(a_float_to_integer, type(a_float_to_integer))

print(c_number, type(c_number))
print(d_number, type(d_number))

# ANSWERS:
#  101.1  <class 'str'>
# 55 <class 'str'>
# 402 Stevens <class 'str'>
# Number 5  <class 'str'>
# 101.1 <class 'float'>
# 55 <class 'int'>
# 55.0 <class 'float'>
# 101 <class 'int'>
# 402 <class 'int'>
# 5 <class 'int'>