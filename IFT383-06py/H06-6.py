#!/usr/bin/python

#variables to be defined
sumTotal = 0
classAverage = 0

#file readin for scores.txt
student_scores={}
with open("scores.txt") as read_file:
    for line in read_file.readlines():
        data=line.split()
        student_scores[data[0]]=[int(x) for x in data[1:]]

#Total records printout
print("Total number of records: " + str(len(student_scores)))

#for loop to iterate hashmap
for thing in student_scores:
    
    #variables for hashmap loop
    individualScores = sum(student_scores[thing])
    individualTestCount = float(len(student_scores[thing]))
    sumTotal += sum(student_scores[thing])
    
    #printout final scores
    print("Final score for " + thing + " = " + str(individualScores / individualTestCount) + "%")

#printout and variable calculation for classAverage
classAverage = sumTotal / len(student_scores) / float(len(student_scores[thing]))
print("Class Average = " + str(classAverage) + "%")
