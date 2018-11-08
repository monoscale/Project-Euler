
# returns the square of the digits
def square_of_digits(n):
    square = 0
    while(n > 0):
        r = n % 10
        square = square + (r ** 2)
        n = n - r
        n = n / 10
    return int(square)


chain_lookup = {} # key = number, value = 1 or 89 (which number it will end on) 
                  # may key should be 9^2 * 7 = 567
# produces the chain for starting number n
# will do lookups to shorten calculation time
def chain_ends_89(n):
    values = [n] # we can determine the end number (1 or 89) for every number on the chain
    count = 1
    while(n != 89 and n != 1):
        if(n in chain_lookup):
            n = chain_lookup[n] # will be either 89 or 1
            break
        n = square_of_digits(n)
        if(n <= 567):
            values.insert(count, n)
            count = count + 1
        
    for val in values:
        chain_lookup[val] = n
    return n == 89


count = 0
for i in range(1, 10000001):
    if(chain_ends_89(i)):
        count = count +1
    
print(count)