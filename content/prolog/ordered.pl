smallest(X, []).
smallest(X, [H|T]) :- X =< H, smallest(X, T).

ordered([]).
ordered([H|T]) :- smallest(H, T), ordered(T). 
