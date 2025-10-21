import math

def anzahl_zerlegungen(n):
    zerlegungen = 0
    for a in range(1, math.floor(n ** (1/3)) + 1):
        if n % a != 0:
            continue

        d = ((a ** 4 + 4 * a * n) ** (1/2) - a ** 2) / (2 * a)

        if a > d:
            break
        if d % 1 == 0 and a * (a + d) * d == n:
            d = int(d)
            zerlegungen += 1
            if a != d:
                zerlegungen += 1
    return zerlegungen


max_z = 0
n = 1

while True:
    zerlegungen = anzahl_zerlegungen(n)
    if zerlegungen > max_z:
        max_z = zerlegungen
        print(f"{n} hat {zerlegungen} Zerlegungen.")
    n += 1