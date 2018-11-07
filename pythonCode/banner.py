#!/usr/bin/env python3
"""
Task: Create a function call banner() that
prints a message inside the banner.
Example: Hola will be printed as
****
Hola
****
Your function should be able to specify the
banner character
"""


def banner(text, fill="#"):
    """
    Prints a message surrounded by a character
    Args:
        text: String to print
        fill: character to surround string
            Default: "#"
    """
    decor = fill * (len(text) + 4)
    print(decor)
    print(fill, text, fill)
    print(decor)


def main():
    """
    Test your module
    """

    banner("Hola", "%")
    banner("Weber State")


if __name__ == "__main__":
    main()
    exit(0)
