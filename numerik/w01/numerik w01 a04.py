# Aufgabe 4a
summe = 0
for n in range (1, 5001):
    summe = summe + 1/n
print(f"Die Summer der ersten 5000 Summanden der harmonischen Reihe ist {summe}.")


#Aufgabe 4b
def ist_valide(eingabe):
    if not eingabe.isdigit():
        return False
    
    zahl = int(eingabe)
    if not zahl in range(2, 13):
        return False
    
    return True

eingabe = input("Geben sie eine ganze Zahl im Intervall [2,12] ein: ")
while not ist_valide(eingabe):
        eingabe = input("Ungültige Eingabe. Geben sie eine ganze Zahl im Intervall [2,12] ein: ")

n = int(eingabe)
h = 0
summe = 0

while summe <= n:
    h = h + 1
    summe = summe + 1/h

print(f"Die Partialsumme {summe} ist erstmals größer als {n} und die Anzahl der Summanden ist {h}.")