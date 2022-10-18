def rx(t):
    return ((-0.25)**t) * 16/15

sum = 10*16/15
for k in range(1, 10):
    sum += 2*(10-k)*rx(k)

sum /= 100

print(sum)
