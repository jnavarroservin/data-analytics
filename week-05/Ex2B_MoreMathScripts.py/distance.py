# 4. How do you calculate the distance between coordinates (x1, y1) and (x2, y2)?
# Formula used:
# d = √((x2 - x1)^2 + (y2 - y1)^2)

import math
x1 = float(input('What are the coordinates for x1? '))
y1 = float(input('What are the coordinates for y1? '))
x2 = float(input('What are the coordinates for x2? '))
y2 = float(input('What are the coordinates for y2? '))

distance = (math.sqrt((x2 - x1)**2 + (y2 - y1)**2))
print(f'The distance between Point A {x1, y1} and Point B {x2, y2} is: {distance:.2f}.')

# ANSWER:
# What are the coordinates for x1? 2.5
# What are the coordinates for y1? 10
# What are the coordinates for x2? 3
# What are the coordinates for y2? 9.7
# The distance between point A (2.5, 10.0) and point B (3.0, 9.7) is: 1.

#COMMENTS:
# math.sqrt() is used to calculate the square root of the distance formula.