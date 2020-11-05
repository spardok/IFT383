#!/usr/bin/python
varIn1 = raw_input("Please enter the first exam score in the form score/max: ")
varIn1 = eval(varIn1 + str(0.0))
varIn2 = raw_input("Please enter the second exam score in the form score/max: ")
varIn2 = eval(varIn2 + str(0.0))
varIn3 = raw_input("Please enter the third exam score in the form score/max: ")
varIn3 = eval(varIn3 + str(0.0))

if type(varIn1) is float:
    totalAverage = ((varIn1 + varIn2 + varIn3) / 3)
    
    if totalAverage >= 0.95:
        print("Your Average was %0.2f%%") \
            % (totalAverage * 1000)
        print("Great work! Your average was over 95%!!!!")
    else:
        print("Your Average was %0.2f%%") \
            % (totalAverage * 1000)
