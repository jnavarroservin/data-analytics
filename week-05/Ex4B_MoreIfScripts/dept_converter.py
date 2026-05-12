# write a scriptif/elif/else logic to determine and print department name based on a department code.
# Make sure to test your script with multiple codes.

# 1 Marketing
# 5 Human Resources
# 10 Accounting
# 12 Legal
# 18 IT
# 20 Customer Relations

department_code = int(input('What is the department code? '))

if department_code == 1:
    print('1: Marketing')
    
elif department_code == 5:
    print('5: Human Resources')

elif department_code == 10:
    print('10: Accounting')

elif department_code == 12:
    print('12: Legal')

elif department_code == 18:
    print('18: IT')

elif department_code == 20:
    print('20: Customer Relations')

else:
    print('Error. Invalid department code. Please Try again.')