# ez
def reverse_num(n):
    return int(str(n)[::-1])
def is_palindromic(n):
    s = str(n)
    length = len(s)
    for i in range(0, int(length/2)):
        if(s[i] != s[length - i - 1]):
            return False
    return True    
    

total = 0

for i in range(1, 10000):
    count = 0
    x = i
    y = reverse_num(i)
    x = x + y
    while (count < 50 and not is_palindromic(x)):
        y = reverse_num(x)
        x = x + y
        count = count + 1
    if(count >= 50):
        total = total + 1

print(total)