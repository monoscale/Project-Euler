from math import ceil
from time import perf_counter, process_time

# things to consider
# r should not equal n   (because result will be 1)
# r should not equal 1   (because result will be n, which will only be 100 anyway)
# r should not equal 0   (because result will be 0)

# for C_{n}^{r}: only calculate C for r values <= ceil(n/2), r-values after this bound will be the same result from one of the previous C values
# for example: C_{5}_{1} = C_{5}_{4}


factorial = []
factorial.insert(0, 1)
for i in range (1, 101): # cache factorial operations
    factorial.insert(i, i * factorial[i - 1])

def C(n, r):
    return (factorial[n]/((factorial[r] * factorial[n - r])))


t_exec = perf_counter()
count = 0
for n in range(1, 101):
    for r in range(1, n):# actaully, its just easier to just iterate them all
        if(C(n, r) > 1000000): 
            count = count + 1

print("There are %d values of C(n, r), for 1 <= n <= 100, greater than one-million" % count)
print("Execution time: %f s"  % float(perf_counter() - t_exec))



