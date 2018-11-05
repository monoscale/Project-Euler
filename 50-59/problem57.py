from math import sqrt

def to_positive(n):
    if(n >= 0):
        return n
    else:
        return n * -1

def n_contains_more_digits_than_r(n, r):
    if(len(str(n)) > len(str(r))):
        return True
    return False

# edited version of the extended algorithm of Euclides for constructing continued fractions
iteration = 0

x_l = sqrt(2)
x_r = (x_l - int(x_l)) ** -1

q_l, q_r = 1, 0
p_l, p_r = 0, 1

m = 1

amount = 0 # amount of fractions that contain a numerator with more digits than the denominator

while iteration < 500: # one iteration actaully calculates two values so divide by two the number you actaully want to reach
    q_l = q_l - (q_r * m)
    p_l = p_l - (p_r * m )
    
    if(n_contains_more_digits_than_r(to_positive(p_l), to_positive(q_l))):
        amount = amount + 1

    x_l = (x_r - int(x_r)) ** -1
    m = int(x_l)

    q_r = q_r - (q_l * m)
    p_r = p_r - (p_l * m)

    if(n_contains_more_digits_than_r(to_positive(p_r), to_positive(q_r))):
        amount = amount + 1

    x_r = (x_l - int(x_l)) ** -1
    m = int(x_l)

    iteration = iteration + 1

print(amount)