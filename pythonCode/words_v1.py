#!/usr/bin/env python3

from urllib.request import urlopen

# Task 1: Create a list of all the words in the document
inFile = 'http://icarus.cs.weber.edu/~hvalle/cs3030/data/t.txt'
with urlopen(inFile) as story:
    words = []
    for line in story:
        line_words = line.decode('utf-8').split()
        for word in line_words:
            words.append(word)





# Task 2: Print each words
print(words)
print("There are ", len(words))

exit(0)
