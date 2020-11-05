#!/usr/bin/python
yearCount = 0

varIn1 = input("Please enter the starting balance: ")


while varIn1 < 1000000:
    varIn1 = varIn1 * 1.04
    yearCount += 1
    
print("In " + str(yearCount) + " years at 4% compounded interest, you will be a millionaire!!")
    
