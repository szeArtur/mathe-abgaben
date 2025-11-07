def validiere_b(eingabe):
    if not eingabe.isdigit():
        return False

    if not int(eingabe) in range(2, 10):
        return False
    
    return True

def validiere_z(eingabe):
    return eingabe.isdigit()

# ===============================================================================================

while True:
    eingabe_z = input("Geben Sie eine natürliche Dezimalzahl z an: ")
    while not validiere_z(eingabe_z):
        eingabe_z = input("Ungültige Eingabe. Geben Sie eine natürliche Dezimalzahl an: ")

    eingabe_b = input("Geben Sie eine Basis 1 < b < 10 an: ")
    while not validiere_b(eingabe_b):
        eingabe_b = input("Ungültige Eingabe. Geben Sie eine Basis 1 < b < 10 an: ")

    z = int(eingabe_z)
    b = int(eingabe_b)

    z_badisch = ""

    while z != 0:
        z_badisch = str(z % b) + z_badisch
        z = z // b

    print(f"{eingabe_z} in Basis 10 ist {z_badisch} in Basis {eingabe_b}.")