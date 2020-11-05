#!/usr/bin/python

#ASKS USER FOR INPUT
varIn = input("Enter an amount of money: ")

#HOLDS VARIABLES

varDollars = int(varIn / 1.0)
varQuarters = ((varIn % 1.0) / 0.25)
varDimes = (((varIn % 1.0) % 0.25) / 0.10)
varNickles = ((((varIn % 1.0) % 0.25) % 0.10) / 0.05)
varPennies = int((((varIn % 1.0) % 0.25) % 0.10) % 0.05)

#PRINT STATEMENTS FOR CURRENCY
print("Your amount of $" + str(varIn) + " consists of:")
print("dollar(s) " + str(varDollars))
print("quarter(s) " + str(varQuarters))
print("dime(s) " + str(varDimes))
print("nickel(s) " + str(varNickles))
print("pennie(s) " + str(varPennies))
print("\n\n")

#HOLDS VARIABLES
varEval = ((varIn % 1) * 100)
varDollars = int(varIn / 1)
varQuarters = int(varEval // 25)
varDimes = int((varEval % 25) // 10)
varNickles = int(((varEval % 25) % 10) // 5)
varPennies = int(((varEval % 25) % 10) % 5)

#PRINT STATEMENTS FOR CURRENCY
print("Your amount of $" + str(varIn) + " consists of:")
print("dollar(s) " + str(varDollars))
print("quarter(s) " + str(varQuarters))
print("dime(s) " + str(varDimes))
print("nickel(s) " + str(varNickles))
print("pennie(s) " + str(varPennies))

