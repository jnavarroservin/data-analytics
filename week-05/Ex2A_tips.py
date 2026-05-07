#LAB 1
# Define known values
food_cost = 79.25
tax = 6.54
tip = 12.00
# Calculate the unknown
total_due = food_cost + tax + tip
# Display the results
# print("The total due is " + str(total_due))
        # str() function serves to convert the total_due variable from a number to a
        # string so that it can be concatenated with the rest of the print statement.

print("Food cost is " + str(food_cost) + " and tax is " + str(tax))
# print("Tip is " + str(tip))
print("Total due is " + str(total_due))
print("Tip is " + format(tip, ".2f"))
        # The format() function serves to format the tip variable to two decimal places.
        # The ".2f" means it will be formatted as a floating-point num with two digits after the decimal point.
        #ChatGPT helped explain this and it also states it's commonly used for money, %, and value requiring a decimal point.
