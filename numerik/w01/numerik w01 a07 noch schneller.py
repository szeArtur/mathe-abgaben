import math

n = int(input("Geben Sie eine natürliche Zahl an: "))

counter = 0

for a in range(1, math.floor(n ** (1/3)) + 1):
    counter += 1
    if n % a != 0:
        continue

    d = ((a ** 4 + 4 * a * n) ** (1/2) - a ** 2) / (2 * a)

    if a > d:
        break
    if d % 1 == 0 and a * (a + d) * d == n:
        d = int(d)
        print(f"{n} = {a} * {a + d} * ({a + d} - {a})")
        if a != d:
            print(f"{n} = {d} * {a + d} * ({a + d} - {d})")

print(f"{counter} Schritte")