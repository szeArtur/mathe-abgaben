eingabe = input("Geben Sie eine natürliche Zahl ein: ")
while not eingabe.isdigit():
    eingabe = input("Ungültige Eingabe. Geben Sie eine natürliche Zahl ein: ")

b = int(eingabe)
summe_der_teiler = 0

for a in range(1 , b):
    if b % a == 0:
        summe_der_teiler = summe_der_teiler + a
print(f"Die echte Teilersumme von {b} ist {summe_der_teiler}.")

#Die Relation der Teilersumme zu b prüfen und auswerten:
if summe_der_teiler < b:
    print(f"{b} ist eine defiziente Zahl.") 
if summe_der_teiler == b:
    print(f"{b} ist eine vollkommene Zahl.")
if summe_der_teiler > b:
    print(f"{b} ist eine abundante Zahl.")