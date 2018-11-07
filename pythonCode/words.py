#!/usr/bin/env python3
"""
A module to retrieve a file from the web
and print the words in it.
"""
from urllib.request import urlopen


# Task 1: Create a function fetch_words


def fetch_words(url):
    """
    Fetch a list of words from a URL
    Args:
        url: The URL of a UTF-8 text document
    Returns:
        A list of strings containing the words from
        the document
    """
    with urlopen(url) as story:
        words = []
        for line in story:
            line_words = line.decode('utf-8').split()
            for word in line_words:
                words.append(word)
    return words


def print_items(items):
    """
    Take a collection objects and prints the objects
    Args:
        items: A collection of objects
    Returns:
        Nothing
    """
    for item in items:
        print(item)


def main():
    """
    Test Function
    """
    url_file = 'http://icarus.cs.weber.edu/~hvalle/cs3030/data/t.txt'
    words = fetch_words(url_file)
    print_items(words)


if __name__ == "__main__":
    main()
    exit(0)
