def finde_zerlegungen(n):
    zerlegungen = []

    # wir nutzen die variable d := (b-a) sodass n = a * b * (b-a) = a * (a+d) * d.
    # die symmetrie dieser schreibweise nutzen wir um für jede a-d-kombination
    # direkt zwei zerlegungen zu finden, indem wir die werte von a und d tauschen
    for a in range(1, int(n ** (1/3)) + 1):
        if n % a != 0:
            continue

        d = (((a**4) + (4 * a * n)) ** (1/2) - (a**2)) / (2 * a)

        if a > d:
            break
        
        d = int(d)
        if n % d != 0:
            continue

        zerlegungen.append(f"{n} = {a} * {a + d} * ({a + d} - {a})")
        if a != d:
            zerlegungen.append(f"{n} = {d} * {a + d} * ({a + d} - {d})")
    
    return zerlegungen


while True:
    eingabe = input("Geben Sie eine natürliche Zahl ein: ")
    while not eingabe.isdigit():
        eingabe = input("Ungültige Eingabe. Geben Sie eine natürliche Zahl ein: ")

    zerlegungen = finde_zerlegungen(int(eingabe))

    if len(zerlegungen) == 0:
        print(f"Keine Zerlegungen gefunden.")
    else:
        print(f"{len(zerlegungen)} Zerlegungen gefunden:")

    for zerlegung in zerlegungen:
        print(zerlegung)