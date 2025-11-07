#let ggT = math.op("ggT")





= Aufgabe 4
Die Folge der Fibonacci-Zahlen $(f_n)_(n≥0)$ ist definiert durch die rekursive Vorschrift
$ f_(n+1) := f_n + f_(n-1), n ∈ NN, quad "sowie" quad
f_0 = 0, quad f_1 = 1. $


== a)
Für alle $n ∈ NN_0$ gilt
$ f_n = 1/(sqrt(5))(((1 + sqrt(5))/2)^n - ((1 - sqrt(5))/2)^n). $

_Beweis._ Für $A := (1 + sqrt(5))/2$ gilt
$
A - 1/A
= (1 + sqrt(5))/2 - 2/(1 + sqrt(5))
= ((1 + sqrt(5))^2 - 4) / (2 + 2 sqrt(5))
= (1 + 2 sqrt(5) + 5 - 4) / (2 + 2 sqrt(5))
= 1.
$
Daraus folgt für alle $n in NN$
$
A^n = A^n (A - 1/A) = A^n dot A - A^n dot 1/A = A^(n+1) - A^(n-1),
$
also $A^(n+1) = A^n + A^(n-1)$. Analog gilt für $B := (1 - sqrt(5))/2$, dass
$
B - 1/B
= (1 - sqrt(5))/2 - 2/(1 - sqrt(5))
= ((1 - sqrt(5))^2 - 4) / (2 - 2 sqrt(5))
= (1 - 2 sqrt(5) + 5 - 4) / (2 - 2 sqrt(5))
= 1,
$
also auch für alle $n in NN$, dass $B^(n+1) = B^n + B^(n-1)$.

Wir beweisen nun mittels Induktion über $n$, dass $f_n = 1/sqrt(5) (A^n - B^n)$.

IA: Zunächst gilt
$
f_0 &= 1/(sqrt(5))(((1 + sqrt(5))/2)^0 - ((1 - sqrt(5))/2)^0) = 0, \

f_1 &= 1/(sqrt(5))(((1 + sqrt(5))/2)^1 - ((1 - sqrt(5))/2)^1) = 1.
$
IV: Sei nun $n > 1$ fest und gelte $f_n = 1/sqrt(5) (A^n - B^n)$ und $f_(n-1) = 1/sqrt(5) (A^(n-1) - B^(n-1))$.

IS: Dann gilt auch
$
f_(n+1) = f_(n) + f_(n-1) &= 1/sqrt(5) (A^n - B^n) + 1/sqrt(5) (A^(n-1) - B^(n-1)) \
&= 1/sqrt(5) (A^n - B^n + A^(n-1) - B^(n-1)) \
&= 1/sqrt(5) ((A^n + A^(n-1)) - (B^n - B^(n-1))) \
&= 1/sqrt(5) (A^(n+1) - B^(n+1)).
$
Die Aussage ist somit für alle $n in NN_0$ gezeigt.



== b)
Für alle $n ∈ NN_0$ gilt $f_(2n+1) = f^2_n + f^2_(n+1)$.

_Beweis._ Wir zeigen zunächst durch Induktion über $n$
dass für alle $n,m in NN$ gilt $f_(m+n) = f_m f_(n+1) + f_(m-1) f_n$.

IA: Es gilt für die Fälle $n = 1$ und $n=2$, dass
$
f_(m+1) &= f_m + f_(m-1) = f_m f_2 + f_(m-1) f_1 quad "und"\
f_(m+2) &= f_(m+1) + f_m = (f_m + f_(m-1)) + f_m = f_m dot 2 + f_(m-1) = f_m f_3 + f_(m-1) f_2
$
IV: Gelte $f_(m+n) = f_m f_(n+1) + f_(m-1) f_n$ und $f_(m+n-1) = f_m f_(n) + f_(m-1) f_(n-1)$ für ein beliebiges, festes $n$.

IS: Dann folgt
$
f_(m+n+1) 
&= f_(m+n) + f_(m+n-1)\
&= (f_m f_(n+1) + f_(m-1)) + (f_m f_(n) + f_(m-1) f_(n-1)) \
&= f_m(f_(n+1) + f_n) + f_(m-1)(f_(n+1) + f_n) \
&= f_m f_(n+2) + f_(m-1) f_(n+1).
$
Somit gilt für alle $m,n in NN$, dass $f_(m+n) = f_m f_(n+1) + f_(m-1) f_n$. Wir folgern daraus
$
f_(2n+1) = f_((n+1)+n) = f_(n+1) f_(n+1) + f_(n) f_n = f^2_n + f^2_(n+1).
$


= Aufgabe 6
== a)
Sei $a > b ∈ NN$. Wenn die Anwendung des Algorithmus zu $k ≥ 1$ rekursiven Aufrufen
von $ggT(a, b)$ führt, so gilt $a ≥ f_(k+2)$ und $b ≥ f_(k+1)$.

_Beweis._
Wir beweisen dies durch Induktion über $k$.

IA: Sei $k = 1$. Nach Voraussetzung ist $a >= 2 = f_3$ und $b >= 1 = f_2$.

IV: Angenommen für einen Algorithmus $ggT(a,b)$ mit $a < b in NN$, der nach $k$ rekursiven Anwendung der Funktion abbricht, gelte stets $a ≥ f_(k+2)$ und $b ≥ f_(k+1)$.

IS: Für einen Algorithmus $ggT(a,b)$ mit $a < b in NN$, der nach $k+1$ rekursiven Anwendung der Funktion abbricht, ist nach einer Anwendung
$
ggT(a,b) = ggT(a mod b, b) = ggT(b, a mod b) quad "mit" quad b > a mod b.
$
Die Aufflösung von $ggT(b, a mod b)$ braucht $k$ weitere Anwendungen der Funktion. Also ist nach IV
$
a mod b >= f_(k+1) quad "und" quad b >= f_(k+2).
$
Angenommen $a < f_(k+3)$, dann wäre
$
f_(k+2) + f_(k+1) = f_(k+3) > a > b >= f_(k+2),
$
woraus folgt $a - b < f_(k+1)$. Das ist ein Widerspruch, denn $a mod b >= f_(k+1)$. Also muss $a >= f_(k+3)$ sein.
Die Aussage ist somit für alle $k in NN$ gezeigt.



== b)
Zur Berechnung von $ggT(f_(k+1), f_k)$ sind genau $k-1$ rekursive Aufrufe der Funktion $ggT$ notwendig.

_Beweis._ Es ist nach einem Aufruf der Funktion $ggT(f_(k+1), f_k) = ggT(f_(k+1) mod f_k, f_k)$ und laut Definition der Fibonacci-Zahlen
$
ggT(f_(k+1) mod f_k, f_k) =
ggT((f_(k) + f_(k-1)) mod f_k, f_k) =
ggT(f_(k-1) mod f_k, f_k).
$
Da stets $f_(k-1) < f_k$, ist
$
ggT(f_(k-1) mod f_k, f_k) =
ggT(f_(k-1), f_k) =
ggT(f_k, f_(k-1)).
$
Nach $k-1$ Aufrufen ist erhält man also
$
ggT(f_(k+1), f_k) = 
underbrace(ggT(f_k, f_(k-1)), "1. Aufruf")
= dots =
underbrace(ggT(f_1, f_0), "(k-1). Aufruf")
= ggT(1, 0) = 
1.
$