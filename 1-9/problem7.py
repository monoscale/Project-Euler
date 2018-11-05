import math

def is_prime(n):
    for i in range(2, int(math.sqrt(n)) + 1):
        if n % i == 0:
            return False    
    return True

total_primes = 0
current_num = 1

while(total_primes <= 10000):
    if(is_prime(current_num)):
        total_primes = total_primes + 1
    current_num = current_num + 1

print(current_num)