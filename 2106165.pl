/* Fakta */
orang(david).
orang(amy).
orang(liza).
orang(jhon).
orang(jack).
orang(karen).
orang(susan).
orang(ray).
orang(peter).
orang(mary).

pria(david).
pria(jhon).
pria(jack).
pria(ray).
pria(peter).

wanita(amy).
wanita(liza).
wanita(karen).
wanita(susan).
wanita(mary).

orangtua(david, liza).
orangtua(david, jhon).
orangtua(amy, liza).
orangtua(amy, jhon).
orangtua(jack, susan).
orangtua(jack, ray).
orangtua(karen, susan).
orangtua(karen, ray).
orangtua(jhon, peter).
orangtua(jhon, mary).
orangtua(susan, peter).
orangtua(susan, mary).

/* Aturan */
anak(A, B) :- orangtua(B, A).
anaklaki(A, B) :- anak(A, B), pria(A).
anakperempuan(A, B) :- anak(A, B), wanita(A).
kakek(K, C) :- orangtua(K, X), orangtua(X, C), pria(K).
nenek(N, C) :- orangtua(N, X), orangtua(X, C), wanita(N).
cucu(C, K) :- anak(C, X), anak(X, K).
cicit(CC, K) :- cucu(CC, X), anak(X, K).
saudara_kandung(A, B) :- orangtua(X, A), orangtua(X, B), A \= B.
saudara_tiri(A, B) :- orangtua(X, A), orangtua(X, B), orangtua(Y, A), orangtua(Y, B), A \= B, X \= Y.
sepupu(A, B) :- orangtua(X, A), orangtua(Y, B), saudara_kandung(X, Y), A \= B.
