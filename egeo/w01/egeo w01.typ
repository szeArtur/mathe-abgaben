#let inn = (sym.lt, move(sym.dash.en, dx: -0.85em, dy: -0.07em), h(-0.5em)).join()



= Aufgabe 3
== a)

Sind $L, L' in G$ nicht parallel, so haben sie einen eindeutigen Schnittpunkt.

_Beweis._ Seien $L, L' in G$ nicht parallel. Es ist equivalent:

$ not L || L' quad <=> quad not ((L = L') or (L inter L' = emptyset))
quad <=> quad (L != L') and exists p in P: p inn L and p inn L' $

Also gibt es mindestens einen Punkt $p$ der auf beiden Geraden liegt.
Angenommen es gäbe mehrere Punkte $p != q$, die auf beiden Geraden liegen, dann wären nach *Axiom $I_2$* $L$ und $L'$ die gleiche Gerade.
Das ist ein Widerspruch zu $(L != L')$, also ist $p$ eindeutig.
#sym.square.stroked