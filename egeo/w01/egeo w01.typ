#let inn = (sym.lt, move(sym.dash.en, dx: -0.85em, dy: -0.07em), h(-0.5em)).join()


= Aufgabe 4

Sei $S^2 := {x in RR^3 | ∥x∥ = 1}$ die 2-dimensionale Sphäre, also die „Oberfläche“
der Einheitskugel im dreidimensioanlen Raum.
Ein Großkreis auf $S^2$ ist eine Menge $G$ der Form:
$ G = E ∩ S^2, quad quad "wobei" E ⊂ RR^3 "2-dimensionaler Untervektorraum ist." $
Wir setzen nun $PP := S^2$ und $GG := {G | G "ist Großkreis auf" S^2}$ die Menge
aller Großkreise.

== a)
Zu zwei Punkten $p, q ∈ PP$ existiert immer ein Großkreis $G ∈ GG$, so dass $p, q ∈ G$.

_Beweis._ Zwei beliebige Vektoren $p,q != 0 in S^2 subset RR^3$ bilden eine Basis
eines Untervektorraums $E$. Dieser ist maximal 2-dimensional und mindestens
1-dimensional. Eine eindimensionale Basis können wir um einen Vektor
$v in RR^3 without E$ ergänzen und erhalten ebenfalls einen 2-dimensionalen
Untervektorraum. Zu desem gibt es stets einen Großkreis, der $p$ und $q$ enthält.

== b)
Ein Großkreis $G$ ist genau dann eindeutig ist, wenn $q in.not {p, -p}$.

_Beweis._ "$=>$" Sei ein beliebiger Großkreis $G in GG$ eindeutig durch $p,q in G$
bestimmt. Dann bestimmen $p,q$ eindeutig einen 2-dimensionale UVR, d.h. sie sind
linear unabhängige Basisvektoren. Angenommen $q in {p, -p}$.
Dann ist $q = lambda p$ mit $lambda in {1,-1}$.
Das ist ein Widerspruch, denn dann wären $p$ und $q$ linear abhängig.

"$arrow.l.double$" Seien $p,q in S^2$, wobei $q in.not {p, -p}$.
Dann sind existiert wie in a) gezeigt ein Großkreis $G$ mit dazugehörigem
Untervektorraum $E$ sodass $p,q in G subset E$.
Angenommen es gäbe einen weiteren Großkreis $G'$ mit dazugehörigem
Untervektorraum $E'$. Die Vektoren $p,q$ sind linear unabhängig, also Basis
von $E$ und $E'$. Also müssen die beiden Untervektorräume und somit die beiden
Großkreise bereits gleich gewesen sein.

#pagebreak()

== c)
Sei $p inn G :⇔ p ∈ G$. Wir überprüfen welche Inzidenzaxiome diese Relation erfüllt.

=== I1 "Durch je zwei Punkte geht eine Gerade":
Wurde bereits in a) bewiesen.

=== I2 "Durch je zwei verschiedene Punkte geht höchstens eine Gerade":
Ist im Allgemeinen falsch.

_Beweis._
Seien $p := e_1, q := -p$ Punkte auf $S^2$ und $E := L(p, e_2), E' := (p, e_3)$
Untervektorräume mit dazugehörigen Großkreisen $G, G'$.
Dann ist $p in E, p in E'$ und $q = 1 dot -p + 0 dot e_2 in E$
und $q = 1 dot -p + 0 dot e_3 in E'$.
Allerdings ist $E != E'$, da beispielsweise $E in.rev e_2 in.not E'$,
also auch $G != G'$.

=== I3 "Jede Gerade enthält mindestens zwei verschiedene Punkte":
Ist im Allgemeinen wahr.

_Beweis._ Sei ein beliebiger Großkreis $G$ und der dazugehörige Untervektorraum $E$
mit Basis $B = (b_1, b_2)$. Dann liegt $p := b_1 dot 1 / (||b_1||)$ auf $G$,
denn $||p|| = 1$ und $p = 1 / (||b_1||) dot b_1 + 0 dot b_2$ also $p in E$.
Analog liegt $q := b_2 dot 1 / (||b_2||)$ ebenfalls auf $G$,
wobei $p != q$, da $b_1$ und $b_2$ linear unabhängig sind.

=== I4 "Es gibt drei Punkte, die nicht auf einer Geraden liegen":
Ist im Allgemeinen wahr.

_Beweis._ Seien weiterhin $p,q,E$ zu einem beliebigen Großkreis $G$
wie in I3 definiert.
Wähle einen beliebigen Punkt $r' in RR^3 without E$ und
setze $r := r' dot 1 / (||r'||)$. Angenommen $r in G subset E$,
dann wäre $r' = ||r'|| dot r in E$. Dies ist ein Widerspruch also liegt r nicht auf $G$.