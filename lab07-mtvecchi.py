#!/usr/bin/python
import math

# ==========================================================================


# YOUR SUBMISSION GOES HERE

#Account class
class Account(object):
    _userName = ""
    _myBalance = 0.0
    _transCount = 0
    
    #Account constructor
    def __init__(self, userName, myBalance):
        self._userName = userName
        self._myBalance = myBalance
    
    #deposit method for Account
    def deposit(self, amount):
            self._myBalance += amount
            self._transCount += 1
            return self._myBalance
    
    #withdraw method for Account
    def withdraw(self, amount):
        if(self._myBalance >= amount):
            self._myBalance -= amount
            self._transCount += 1
            return self._myBalance
        else:
            return False
    
    #returns transaction count
    def __len__(self):
        return self._transCount
    #returns account username
    def __str__(self):
        return self._userName
            
    #compares to another balance
    def __eq__(self, another):
        if (self._myBalance.__eq__(another._myBalance)):
            return True
        else:
            return False
        
#CreditAccount class
class CreditAccount(Account):
    __limit = 0
    __rate = 0
    
    #CreditAccount constructor
    def __init__(self, userName):
        Account.__init__(self, userName, 0)
        self.__limit = 1000.00
        self.__rate = 1.24
    
    #deposit method override
    def deposit(self, amount):
        if (amount > self._myBalance):
            self._myBalance = 0.0
            self._transCount += 1
            return self._myBalance
        else:
            self._myBalance -= amount
            return self._myBalance
    
    #withdraw override
    def withdraw(self, amount):
        if (amount + self._myBalance < self.__limit):
            self._myBalance += (amount * self.__rate)
            self._transCount += 1
            return self._myBalance
        else:
            return False
        
# SavingsAccount class
class SavingsAccount(Account):
    
    #deposit override
    def deposit(self, amount):
        self._myBalance += (amount * 1.05)
        self._transCount += 1
        return self._myBalance
        
    #accrue's... interest?
    def accrue(self):
        self._myBalance *= 1.05
        return self._myBalance
    
# ==========================================================================

## DO NOT MODIFY BEYOND THIS POINT!
## Submissions with modifications beyond this line will be given a 0 score
## We will check... we have the technology :-)
if __name__ == "__main__":
    myScore = 0

    # Test base account
    acct = Account('Chelsey', 1024.32)

    # test withdraw method overdraft
    if acct.withdraw(100000.00) == False:
        myScore += 5
    else:
        print("ERROR: Account.withdraw(ammount) did not return False.")

    # Test withdraw method balance OK
    if acct.withdraw(60.01) == 964.31:
        myScore += 5
    else:
        print("ERROR: Value returned when attempting to make a withdrawal was unexpected")

    # test deposit function
    if acct.deposit(36.50) == 1000.81:
        myScore += 5
    else:
        print("ERROR: The deposit function on Account class returned an unexpected value")

    # test transaction counter
    if len(acct) == 2:
        myScore += 5
    else:
        print("ERROR: The transaction counter returned an unexpected result when using len()")

    # Check toString()
    if str(acct) == 'Chelsey':
        myScore += 5
    else:
        print("ERROR: Converting Account to a string had an unexpected resule")

    # Test equivilance operator
    acct2 = Account('Sam', 1000.81)
    if acct == acct2:
        myScore += 5
    else:
        print("ERROR: Equivilance op test #1 failed")
    acct2.withdraw(1000.00)
    if acct == acct2:
        print("ERROR: Equivilance op test #2 failed")
    else:
        myScore += 5

    # Test the CreditAccount class
    acct = CreditAccount('Chelsey')

    # Test inherited methods
    if str(acct) == 'Chelsey':
        myScore += 5
    else:
        print("ERROR: When testing inherited methods for CreditAccount")
    
    # Test withdraw function
    if acct.withdraw(100000.00) == False:
        myScore += 5
    else:
        print("ERROR: CreditAccount.withdraw did not return expected false")
    if acct.withdraw(100.00) == 124.00:
        myScore += 5
    else:
        print("ERROR: CreditAccount.withdraw returned unexpected result")

    # test deposit function
    if acct.deposit(100.00) == 24.00:
        myScore += 5
    else:
        print("ERROR: CreditAccount.deposit returned unexpected result")
    
    # test transaction counter
    if len(acct) == 1:
        myScore += 5
    else:
        print("ERROR: CreditAccount length was incorrect")

    # test SavingsAccount
    acct1 = SavingsAccount('Hannah', 36.30)
    acct2 = SavingsAccount('Andrew', 156.33)
    if acct1.deposit(100.00) == 141.30:
        myScore += 5
    else:
        print("ERROR: deposit for savings account had unexpected return")

    # test accrue
    if acct1.accrue() == 148.365:
        myScore += 5
    else:
        print("ERROR: deposit for savings account had unexpected return")
print ("Grading complete: your score is %d out of 70" % (myScore) )
