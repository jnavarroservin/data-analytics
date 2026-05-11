# 1. How do you convert a temperature from Fahrenheit to Celsius?
# C = (F - 32)*(0.5556) formula used.

f = float(input('What is the current Fahrenheit temperature? '))

# Originally used int(f), but float() allows decimal temperatures.
c = (f - 32) * (0.556)
print(f'{f:.1f} degrees Fahrenheit is {c:.1f} degrees Celsius.')

# ANSWER:
# What is the current Fahrenheit temperature? 75
# 75.0 degrees Fahrenheit is 23.9 degrees Celsius.