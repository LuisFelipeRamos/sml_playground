isEqual([], []).
isEqual(X, Y) :- subset(X, Y), subset(Y, X).