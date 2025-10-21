import math

n = int(input("Geben Sie eine natürliche Zahl an:"))
counter = 0

for a in range(1, math.floor(n ** (1/3)) + 1):
    counter += 1

    if n % a != 0:
        continue

    wurzel_n_a = (n / a) ** (1 / 2)
    d_min = max(a, wurzel_n_a - a + 1)

    for d in range(math.floor(d_min), math.ceil(wurzel_n_a)):
        counter += 1
        if a * (a + d) * d == n:
            print(f"{n} = {a} * {a + d} * ({a + d} - {a})")
            print(f"{n} = {d} * {a + d} * ({a + d} - {d})")
            break

print(f"{counter} steps")