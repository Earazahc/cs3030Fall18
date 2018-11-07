#!/usr/bin/env python3


def lucas():
    """
    Will produce this series: 2, 1, 3, 4, 7, 11, etc.
    """
    yield 2
    a = 2
    b = 1
    while True:
        yield b
        a, b, = b, a + b


def main():
    """
    Test your module
    """
    for x in lucas():
        print(x)


if __name__ == "__main__":
    main()
    exit(0)
