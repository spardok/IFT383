#!/usr/bin/python
import math

#PRINTS OUT INPUT EXAMPLE AND ASKS USER FOR INPUT
print("You will be promted to enter points. You may use negative or positive values.")
print("Example: xn, yn\n")
varIn1 = input("Enter x1 and y1 for Point 1: ")
varIn2 = input("Enter x2 and y2 for Point 2: ")

#HOLDS VARIABLES
varDistance = round(math.sqrt((varIn2[0] - varIn1[0])**2 + (varIn2[1] - varIn1[1])**2),1)

#PRINTS OUT THE COORDINATES
print("The distance between " + str(varIn1) + " and " + str(varIn2) + " is " + str(varDistance))
