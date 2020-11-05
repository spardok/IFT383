#!/usr/bin/python

#prompts user to enter information
varIn = raw_input("Enter a string: ")

#function to see if the input is a palindrome
def isPalindrome(varIn):
    varInReverse = varIn[::-1]
    if varInReverse == varIn:
        return True
    else:
        return False

#main function 
def main():
    if isPalindrome(varIn) == True:
        print(varIn + " is a palindrome")
    if isPalindrome(varIn) == False:
        print(varIn + " is not a palindrome")

#makes the script call main
if __name__ == "__main__":
    main()
