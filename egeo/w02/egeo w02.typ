#let inn = (sym.lt, move(sym.dash.en, dx: -0.85em, dy: -0.07em), h(-0.5em)).join()


#let innnot = (sym.lt, move(sym.dash.en, dx: -0.85em, dy: -0.07em), move(math.slash, dx: -1.4em, dy: -0.12em), h(-0.9em)).join()


= Aufgabe 3
Sei $PP := {p_i | i in {0, dots, 8}}$
eine Menge paarweise verschiedener Punkte
und $GG := {G_i | i in {0, dots, 8}}$
eine Menge von Graden.
Definiere die Inzidenzrelation $inn$ durch
$ II := {(p_0, G_i), (p_i, G_i), (p_i, G_0) | i in {1 , ..., 8}}, $
und die Anordnungsrelation durch
$ AA := {(p_i, p_j, p_k) | i, j , k != 0 and ((i < j < k) or (i > j > k))}. $
Die Axiome
*I1*, *I2*, *I3*, *I4* sowie *A1*, *A2*, *A4* und *A5* sind erfüllt und *A3* ist nicht erfüllt.

_Beweis._
=== Axiom I1
Seien $p_i ,p_j in PP$.

Falls $i,j != 0$ sind $p_i, p_j inn G_0$.

Falls $i,j = 0$ sind $p_i, p_j inn G_1$.

Falls $i = 0 != j$ sind $p_i, p_j inn G_j$.

Falls $i != 0 = j$ sind $p_i, p_j inn G_i$.

=== Axiom I2
Seien $p_i ,p_j in PP$ mit $i != j$.

Falls $i,j != 0$ sind $p_i, p_j inn G_0$
aber $p_i innnot G_j$, $p_j innnot G_i$ und
$p_i, p_j innnot G_k$ wenn $k in.not {0,i,j}$.

Falls $i = 0 != j$ sind $p_i, p_j inn G_j$
aber $p_i = p_0 innnot G_0$ und $p_j innnot G_k$
wenn $k in.not {0, j}$.

Falls $i != 0 = j$ sind $p_i, p_j inn G_i$
aber $p_j = p_0 innnot G_0$ und $p_i innnot G_k$
wenn $k in.not {0, i}$.

=== Axiom I3
Für $G_0$ sind $p_1, p_2 inn G_0$.

Für $G_i$ mit $i in {1,...,8}$ sind $p_0, p_i inn G_i$.

=== Axiom I4
Die Punkte $p_0, p_1, p_2$ liegen nicht auf einer Graden
$G_i$ denn

für $i = 0$ ist $p_0 innnot G_0$,

für $i = 1$ ist $p_2 innnot G_1$,

für $i = 2$ ist $p_1 innnot G_2$,

für $i > 2$ sind $p_1, p_2 innnot G_i$.

=== Axiom A1
Seien $p_i, p_j, p_k in PP$ mit $(p_i, p_j, p_k) in AA$.
Es sind $i, j, k != 0$ und somit $p_i, p_j, p_k inn G_0$.

=== Axiom A2
Seien $p_i, p_j, p_k in PP$ mit $(p_i, p_j, p_k) in AA$.

Falls $i < j < k$ ist $ k > j > i$, also $(p_k, p_j, p_i) in AA$


Falls $i > j > k$ ist $ k < j < i$, also $(p_k, p_j, p_i) in AA$

=== Axiom A3 (ist nicht erfüllt)
Für $p_0, p_1 in PP$ gibt es keinen Punkt $r in PP$
Sodass $(p_0, p_1, r) in AA$ da die Voraussetzung "$i,j,k != 0$" nicht erfüllt ist.

=== Axiom A4
Seien $p_i, p_j, p_k in PP$.

Falls $(p_i, p_j, p_k) in AA$ mit o.B.d.A $i < j < k$ folgt

$(p_i, p_k, p_j) in.not AA$ denn $i < k lt.not j$
und $i gt.not k > j$,

$(p_j, p_k, p_i) in.not AA$ denn $j < k lt.not i$
und $j gt.not k > i$,

$(p_k, p_i, p_j) in.not AA$ denn $k lt.not i < j$
und $k > i gt.not j$,

$(p_j, p_i, p_k) in.not AA$ denn $j lt.not i < k$
und $j > i gt.not k$,

=== Axiom A5
Seien $p_i, p_j, p_k in PP$ nicht kolliniear mit $p_i, p_j, p_k inn G_i in GG$.

Falls $i = 0$ sind $p_i, p_j, p_k = p_0$ also gleich und insbesondere kollinear. Das ist ein Widerspruch.

Falls $i != 0$ sind $p_i, p_j, p_k != p_0$
also $p_i, p_j, p_k inn G_0$, d.h. sie sind kollinear.
Das ist ein Widerspruch.

Also gibt es kein $G_i in GG$ sodass die Bedingung erfüllt ist.