# How do you convert a temperature from Celsius to Fahrenheit?

# Formula used:
# (C × 1.8) + 32 = F

C = float(input('What is the current temperature in Celsius? ')) 
F = (C * 1.8) + 32
print(f'The temperature {C:.1f} degrees in Celsius is {F:.1f} degrees in Fahrenheit.')
# A float is required for the C variable because a degree with a decimal may be entered and without the float format it will read as a error.
# I'm making sure that the degrees are printed with a singular decimal to the right by using :.#f inside the f-string.


# ANSWER:
# What is the current temperature in Celsius? 12.5
# The 12.5 degrees in Celsius is 54.5 degrees in Fahrenheit.