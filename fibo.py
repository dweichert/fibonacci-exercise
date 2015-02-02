def fibo(n):
    if (n == 0):
        return 0
    elif (n == 1):
        return 1
    else:
        return fibo(n-1) + fibo(n-2);

i = 0

while i < 20:
    print fibo(i)
    i += 1
