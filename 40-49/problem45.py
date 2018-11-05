# Tn = n(n + 1) / 2
# Pn = n(3n - 1) / 2
# Hn = n(2n - 1)

# from wikipedia:
# Every hexagonal number is a triangular number, but only every other triangular number (the 1st, 3rd, 5th, 7th, etc.) is a hexagonal number.

# we dont even need to calculate triangle numbers then, compare hexagonal number with pentagonal

import math

def H(n):
    return int(n * (2*n - 1))

def isPentagonal(Pn):
    # wikipedia is our friend: https://en.wikipedia.org/wiki/Pentagonal_number#Tests_for_pentagonal_numbers
    # inverse pentagonal function: n = (sqrt(24Pn + 1) + 1)/6
    n = (math.sqrt(24 * Pn + 1) + 1)/6
    return (n - int(n) == 0) # check if n is natural integer

i = 144
while(not isPentagonal(H(i))):
    i = i + 1
print(H(i))
