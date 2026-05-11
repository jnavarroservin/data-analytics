# 3. Federal taxes are 23% of your salary every month. You make X amount of money.
# How much is withheld for taxes?

monthly_gross_salary = 1350
federal_tax_withheld = monthly_gross_salary * 0.23
monthly_net_pay = (monthly_gross_salary - federal_tax_withheld)

print(f'My monthly paycheck after taxes is ${monthly_net_pay:.2f}.')
print(f'Federal taxes withheld each month are ${federal_tax_withheld:.2f}.')

# ANSWER:
# My monthly paycheck after taxes is $1039.50.
# Federal taxes withheld each month are $310.50.