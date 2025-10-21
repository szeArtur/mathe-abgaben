import math

n = int(input("Geben Sie eine natürliche Zahl an:"))

counter = 0

for a in range(1, math.floor(n ** (1/3)) + 1):
    if n % a != 0:
        counter += 1
        continue

    d_max = math.ceil((n / a) ** (1 / 2))
    d_min = math.floor(max(a, d_max - a))

    while True:
        counter += 1
        
        if d_max <= d_min:
            break

        d = int((d_min + d_max) // 2)
        produkt = a * (a + d) * d

        if produkt < n:
            d_min = d + 1

        elif produkt > n:
            d_max = d

        else:
            print(f"{n} = {a} * {a + d} * ({a + d} - {a})")
            if a != d:
                print(f"{n} = {d} * {a + d} * ({a + d} - {d})")
            break

print(f"{counter} steps")