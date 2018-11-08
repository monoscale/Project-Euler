from math import sqrt

def is_prime(n):
    for i in range(2, int(sqrt(n)) + 1):
        if(n % i == 0):
            return False
    return True

def totient(n):
    if(is_prime(n)): 
        return n - 1
    factors = distinct_prime_factors(n)
    x = n
    for f in factors:
        x = x * (f - 1)/f
    return x


def distinct_prime_factors(n):
    # hardcoded list of primes because im too lazy
    primes  = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199]
    primeindex = 0
    factors = {}
    while n > 1 and primeindex < len(primes):
        if(n % primes[primeindex] == 0):
            n = n / primes[primeindex]
            factors[primes[primeindex]] = [None]
            primeindex = 0
            continue
        primeindex = primeindex + 1
    return list(factors.keys())

max_n = 0
max_val = 0

for n in range(2, 1000001):
    t = totient(n)
    #print("%d | %d | %f" % (n, t, n / t))
    if (n/t > max_val):
       max_n = n
       max_val = n/t

print(max_n)


