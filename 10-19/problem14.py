cache = {1: 1} # n = 1 gives a sequence of length 1
longest_sequence = 0
num_for_longest_sequence = 0

def collatz_sequence_length(n):
    original = n
    length = 0
    while(n >= 1):
        if(n in cache):
            length = length + cache[n]
            cache[original] = length
            break
        if(n % 2 == 0):
            n = n/2
        else:
            n = 3*n + 1
        length = length + 1    
    return length + 1

for i in range(1, 1000000):
    length = collatz_sequence_length(i)
    if(length > longest_sequence):
        num_for_longest_sequence = i
        longest_sequence = length

print(num_for_longest_sequence)
