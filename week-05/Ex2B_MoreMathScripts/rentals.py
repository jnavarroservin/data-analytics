# 6. There are X people going on a tour. Charter vans seat 15 passengers each. Vans cost
# $250 per day to rent (including the driver’s pay). How many vans do you need?
# How much will it cost to rent vans? What is the cost if you split it per person?

# total_passangers = int(input('How many people will going on tour? '))
import math

total_passangers = 38
passengers_per_van = 15
van_cost = 250

vans_needed = math.ceil(total_passangers / passengers_per_van)
total_cost = van_cost * vans_needed

# a) How much money did your script say you had to charge per person?
cost_per_person = float(total_cost / total_passangers)
print(f'The charge per passanger is ${cost_per_person:.2f}.')


# b) If you multiply that out, how much did you collect?
total_collected = cost_per_person * total_passangers
print(f'I collected a total of ${total_collected:.2f} for the day.')


# c) How much were the vans?
print(f'The total cost for the vans was ${total_cost:.2f}.')


# d) Why do you have leftover money?
print(
    "There is leftover money because vans have fixed seating (15 seats each), "
    "so when the last van is not full, passengers still pay for the full van capacity."
)