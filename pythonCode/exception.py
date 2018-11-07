#!/usr/bin/env python3
"""
A module for demonstration of exceptions
"""
import sys
from math import log


def convert(value):
    """
    Convert an integer
    """
    try:
        return int(value)
    except (ValueError, TypeError) as error:
        print("Conversion error: {}".format(str(error)), file=sys.stderr)
    return -1


def main():
    """
    Test your module
    """
    rv = convert(55)
    return log(rv)


if __name__ == "__main__":
    main()
    exit(0)
