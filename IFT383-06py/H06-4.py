#!/usr/bin/python
varIn1 = raw_input("Please enter your full name: ")


def firstName(varIn1):
    varIn1Split = varIn1.split()
    return varIn1Split[0]
    
print("Hello " + firstName(varIn1) + "!")
    
