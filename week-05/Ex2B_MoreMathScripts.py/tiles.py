# 5. You are going to tile a room whose dimensions are length by width feet. There are
# twelve tiles per box, each 1 foot by 1 foot. How many boxes of tiles do you need? You
# can only buy full boxes, not a partial box.
# You also want to buy at least 10% more tiles than you need in order to handle chips,
# breakage, and mess-ups. How many total boxes will you buy?

# FORMULA USED:
# area = length * width

length = float(input('What is the length of the room? '))
width = float(input('What is the width of the room? '))
area = (length * width)
tiles_per_box = 12

# Calculate the exact number of boxes needed.
boxes_needed = area / tiles_per_box

# Add 10% extra boxes for breakage and mistake
import math
total_boxes = math.ceil(boxes_needed * 1.10)

print(f'The total area of the room is {area:.2f} square feet.')
print(f'The total boxes to purchase is {total_boxes}.')

# ANSWER:
# What is the length of the room? 12.5
# What is the width of the room? 23.1
# The total area of the room is 288.75 square feet.
# The total boxes to purchase is 27.

# COMMENTS:
# I asked AI for help because using the round function was rounding up or down depending on the value
# and it suggested I use math.ceil() instead, which helps me not underestimate on my results.
# This function always rounds up to the nearest whole number aka "ceiling".