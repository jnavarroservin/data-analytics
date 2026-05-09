# LAB 2 // PEER COLLABORATION
#  5. How long will it take a savings account worth X to double in value based on an interest rate of IR?
#  How to Use the Rule of 72 Formula: 72 / interest rate = years to double (used for investing or debt)

savings = 4120
interest_rate = 4
years_to_double = 72 / interest_rate
doubled_savings = savings * 2
print(
    f'''My current savings are ${savings:,.2f} at a {interest_rate}% interest rate, 
    my savings account will be worth ${doubled_savings:,.2f} in {years_to_double:.0f} years.'''
    )

#ANSWER:
# My current savings are $4,120.00 at a 4% interest rate,
# my savings account will be worth $8,240.00 in 18 years.

# ChatGPT reviewed my initial code and suggested I rename my variable from
# compound_interest to doubled_savings to better clarify. Also, it suggested I indent my code for better readability.