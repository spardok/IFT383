#!/usr/bin/python

#variables to be defined
yearCount = 0
tuitionNumber = 10000

#while loop for tuition greater than 20,000
while tuitionNumber < 20000:
   yearCount += 1 
   tuitionNumber = tuitionNumber * 1.07

#print statement for tuition
print("Tuition will be doubled in " + str(yearCount) + " years")
print("Tuition will be $%0.2f in %i years") \
    % (tuitionNumber, yearCount)
