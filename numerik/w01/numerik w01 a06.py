def ist_primzahl(p):
    if p == 2:
        return True

    if p % 2 == 0:
        return False

    for i in range(3, p//2 + 1, 2):
        if p % i == 0:
            return False

    return True

def ist_valide(eingabe):
    if not eingabe.isdigit():
        return False
    
    zahl = int(eingabe)
    if zahl <= 1:
        return False
    
    return True

eingabe = input("Geben Sie eine natürliche Zahl größer als 1 ein: ")
while not ist_valide(eingabe):
        eingabe = input("Ungültige Eingabe. Geben Sie eine natürliche Zahl größer als 1 ein: ")

m = int(eingabe)

if ist_primzahl(m): # bedeutet falls ist_primzahl(m) = True
    n = m
    w = 0
    while n > 0:
        z = n % 10
        w = w * 10 + z
        n = n // 10
    # n ist jetzt null und w unsere umgedrehte Primzahl
    if ist_primzahl(w):
        if w == m:
            print(f"{m} ist keine Mirp-Zahl, da {w} die gleiche Primzahl ist.")
        else:
            print(f"{m} ist eine Mirp-Zahl, da {w} ebenfalls eine Primzahl ist")
    else:
        print(f"{m} ist keine Mirp-Zahl, da {w} keine Primzahl ist.")
else:
    print(f"{m} ist keine Primzahl, also auch keine Mirp-Zahl")
