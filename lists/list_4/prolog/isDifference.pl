isInDifference(X, Y, E) :- member(E, X), not(member(E, Y)).

isDifference(X, Y, []).
isDifference(X, Y, [H|T]) :- isInDifference(X, Y, H), isDifference(X, Y, T).