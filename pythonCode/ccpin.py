#!/usr/bin/env python3
"""
A simulated ATM that recieves a PIN to access the account.
If the user fails to enter the correct PIN more than three
times the card will be blocked.
"""

def valid_input():
    """
    Recieve input from user and compare to
    PIN. User has three tries before auto rejection.
    """
    pin = '1234'
    cont = True
    count = 0
    while cont:
        entered = input("Enter your PIN: ")
        count = count + 1
        if entered == pin:
            print("Your PIN is correct.")
            cont = False
        elif len(entered) != 4:
            print("Invalid PIN length. Correct format is: <9876>")
        elif not entered.isdigit():
            print("Invalid PIN character. Correct format is: <9876>")
        elif entered != pin:
            print("Your PIN is incorrect.")
        if count > 2:
            cont = False
            print("Your bank card is blocked")


def main():
    """
    Test your module
    """
    valid_input()


if __name__ == "__main__":
    main()
    exit(0)
