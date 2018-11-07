#!/usr/bin/env python3


count = 0


def show_count():
    print(count)


def set_count(c):
    # Link local to global variable
    global count
    count = c


def main():
    """
    Test your module
    """

    show_count()
    set_count(2)
    show_count()


if __name__ == "__main__":
    main()
    exit(0)
