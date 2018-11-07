#!/usr/bin/env python3
"""
Module for demonstrating generators execution
"""


def take(count, iterable):
    """
    Take items from the front of an iterable.
    Args:
        count: The maximum number of items to retrieve.
        iterable: The source series
    Yields:
        At most 'count' items from 'iterable'
    """
    counter = 0
    for item in iterable:
        if counter == count:
            return
        counter += 1
        yield item


def run_take():
    """
    Test the take function
    """
    items = [2, 4, 6, 8, 10]
    for item in take(3, items):
        print(item)


def distinct(iterable):
    """
    Return unique items by eliminating duplicates
    Args:
        iterable: The source series
    Yields:
        Unique elements in order from 'iterable'
    """
    seen = set()
    for item in iterable:
        if item in seen:
            continue
        yield item
        seen.add(item)


def run_distinct():
    """
    Test distinct def
    """
    items = [5, 7, 7, 6, 5, 5]
    for item in distinct(items):
        print(item)


def run_pipeline():
    """
    Test all of it
    """
    items = [3, 6, 6, 2, 1, 1, 9, 3]
    for item in take(4, distinct(items)):
        print(item)


def main():
    """
    Test your module
    """
    #run_take()
    #run_distinct()
    run_pipeline()


if __name__ == "__main__":
    main()
    exit(0)
