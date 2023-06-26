my_last(X, [X]).
my_last(X, [_|T]) :- my_last(X, T).

my_reverse([], []).
my_reverse([H1|T1], L2) :- my_last(H1, L2), select(H1, L2, A), my_reverse(T1, A). 
