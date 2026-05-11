# Exercise 4.A Using conditionals

x = 100
y = 20

# a) If x divided by y is 5, print “x divided by y is 5” and set the value of x to 1 – otherwise
# print “are the variables set up correctly?”
if x // y == 5:
    print("x divided by y is 5")
    x = 1
else: print('are the variables set upcorrectly? ')

# ANSWER:
# 'x divided by y is 5'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
# b) If x times y is y, print “now x times y is y” and then set x to 10 – otherwise print
# “Whoops, x equals” + the value of x
if x * y == y:
    print('now x times y is ')
    x = 10
else: print('Whoops, x equals ' + str(x))

# ANSWER:
# 'now x times y is'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
# c) If x is less than y, print “x is less than y” and double the value of x – otherwise print
# “uh oh, x is not less than y”
if x < y:
    print('x is less than y')
    x *= 2
else:
    print('uh oh, x is not less than y ')

#ANSWER:
# 'x is less than y'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
# d) If x is greater than y, print “how is x greater than y??” otherwise print “x is NOT
# greater than y”
if x > y:
    print('how is x greater than y? ')
else: print('x is NOT greater than y')

# ANSWER:
# 'x is NOT greater than y'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
# e) Add a final print statement to say “The final value of x is __ and the final value of y
# is __” (displaying the actual values in place of the blanks)
print(f'The final value of x is {x} and the final value of y is {y}.')

# ANSWER:
# The final value of x is 20 and the final value of y is 20.