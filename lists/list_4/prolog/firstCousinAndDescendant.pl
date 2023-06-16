parent(kim,holly).
parent(margaret,kim).
parent(margaret,kent).
parent(esther,margaret).
parent(herbert,margaret).
parent(herbert,jean).
parent(kent, bruce).
parent(jean, sam).
parent(sam, max).
greatGrandParent(GGP,GGC) :- parent(GGP,GP), parent(GP,P), parent(P,GGC).
sibling(X,Y) :- parent(P,X), parent(P, Y), not(X=Y).

% a
firstCousin(X, Y) :- sibling(M, N), parent(M, X), parent(N, Y), not(X=Y), not(sibling(X, Y)).

% b
descendant(X,Y) :- parent(Y, X); (parent(Y, K), descendant(X, K)).