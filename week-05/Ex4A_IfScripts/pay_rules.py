# Exercise 4.A Using conditionals
# create a script to calculate gross pay given the variables
# pay_rate and hours_worked. If the person works more than 40 hours,
# pay the overtime hours at 1.5 times the rate of regular hours.
hourly_pay_rate = float(input('My hourly pay rate is: '))
hours_worked = float(input('My weekly hours worked are: '))

if hours_worked > 40:

    # Hours worked beyond 40 are considered overtime.
    overtime_hours = hours_worked - 40

    # Regular pay only applies to the first 40 hours.
    regular_pay = 40 * hourly_pay_rate

    # Overtime pay is calculated at 1.5 times the hourly rate.
    overtime_pay = overtime_hours * (hourly_pay_rate * 1.5)
    gross_pay = regular_pay + overtime_pay

else:

    # If no overtime is worked, gross pay is regular pay only.
    gross_pay = hours_worked * hourly_pay_rate

print(f'The gross pay for the week is ${gross_pay:.2f}.')


# Run your script several times with different values for
# pay_rate and hours_worked and confirm the output is right.

# overtime: My hourly pay rate is: 17.5
# My weekly hours worked are: 45
# The gross pay for the week is $831.25.

# no overtime: My hourly pay rate is: 17.5
# My weekly hours worked are: 40
# The gross pay for the week is $700.00.