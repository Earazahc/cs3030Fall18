#!/usr/bin/env python3
"""
Testing fibo series
"""
from __future__ import print_function


def fibonacci():
    """
    After the second member, the next member is the
    sum of the previous two.
    """
    numbers = []
    while True:
        if len(numbers) < 2:
            numbers.append(1)
        else:
            # Add the two members, and append it to list
            numbers.append(sum(numbers))
            # Stripping the first member, so list
            # contains only two members
            numbers = numbers[1:]
            #numbers.pop[0]
        yield numbers[-1]
        continue


def main():
    """
    Test your module
    """
    series = fibonacci()
    for member in range(100):
        print(member + 1, "member is", next(series))


if __name__ == "__main__":
    main()
    exit(0)
