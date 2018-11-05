from math import sqrt

cache = [] # will be used to prevent calculating the same pentagonal numbers over and over


def P(n):
    return int((n * (3*n - 1))/2)

def isPentagonal(Pn):
    n = (sqrt(24 * Pn + 1) + 1)/6
    return (n - int(n) == 0) # check if n is natural integer

found = False

i = 1
while (not found): 
    cache.insert(i - 1, P(i))
    for j in range(1, i):
        s = cache[i - 1] + cache[j - 1]
        d = cache[i - 1] - cache[j - 1] 
        if(isPentagonal(s) and isPentagonal(d)):
            print ("j = %d, k = %d" % (i, j))
            print ("D = | P%d - P%d | = %d" % (i, j, abs(cache[i - 1] - cache[j - 1])))
            found = True
    i = i + 1