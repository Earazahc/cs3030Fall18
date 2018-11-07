#!/usr/bin/env python3


def sqrt(xvar):
    """
    Compute the square root using the method
    of Heron of Alexandria
    Args:
        xvar: The number for which the square root is to be computed
    Returns:
        The square root of xvar
    Exception:
        ValueError(): on negative numbers
    """
    guess = xvar
    count = 0
    try:
        while guess * guess != xvar and count < 20:
            guess = (guess + xvar/guess)/2.0
            count = count + 1
    except ZeroDivisionError:
        raise ValueError()
    return guess


def main():
    """
    Test your module
    """
    print(sqrt(9))
    print(sqrt(2))
    try:
        print(sqrt(-1))
    except ValueError:
        print("Cannot compute square root of a negative number.")

    print("Program continues execution normally")


if __name__ == "__main__":
    main()
    exit(0)
