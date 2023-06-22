perm([], []).
perm(List, [H|Perm]) :- select(H, List, Rest), perm(Rest, Perm).

test([], _, _, _).
test([Y|Ys], X, Cs, Ds) :-
    C is X-Y, \+ member(C, Cs),
    D is X+Y, \+ member(D, Ds),
    X1 is X + 1,
    test(Ys, X1, [C|Cs], [D|Ds]).

nqueen(Q, N) :- numlist(1, N, L) , perm(L, Q), test(Q, 1, [], []).

% aux
allnqueen(A, N) :- findall(Q, nqueen(Q, N), A).
countAllnqueen(C, N) :- allnqueen(A, N), length(A, C).