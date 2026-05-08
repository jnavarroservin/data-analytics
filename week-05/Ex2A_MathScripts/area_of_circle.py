# LAB 2 // PEER COLLAB
# 4. How do you calculate the area of a circle?

diameter = 12
radius =  diameter / 2
import math 
area = math.pi * radius**2
print(f'The area of a circle with radius {radius} is: {area:.2f}')

# ANSWER:
# The area of a circle with radius 6.0 is 113.10

# Originally, my area formula appeared as <<area = round(math.pi, 2)>>
# and after checking my results through Copilot it suggested I use the entire pi formula
# to obtain the best results for my output. It offered an alternative to round my print statement.