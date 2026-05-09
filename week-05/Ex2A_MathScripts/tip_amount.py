# LAB 2 // PEER COLLAB
#3. How do you calculate the tip amount on a restaurant bill given the tip percentage?

tip_percentage = 15
bill_amount = 53.75
tip_amount = (tip_percentage / 100) * bill_amount
# print(f'The tip amount on a ${bill_amount} restaurant bill is ${tip_amount:.2f}.')
    
    
# ANSWER:
# The tip amount on a $53.75 restaurant bill is: $8.06.
# I learned that the colon symbol helps seperate the value
# from the format type, which allows me to limit the result
# to only two decimal points."""


tip_amount = input("How much do you want to tip? ")
print(f"You're tipping ${tip_amount}")

print(f'The tip amount on a ${bill_amount} restaurant bill is ${tip_amount}.')

# ANSWER: Possible pitfalls of using input():
# 1. input() always stores data as a string/text.
# 2. If math is needed, the value must be converted using int() or float().
# 3. Users could type letters or symbols instead of numbers, causing errors.
# 4. Users could leave the input blank.
# 5. Currency symbols like "$15" cannot be converted directly to float().