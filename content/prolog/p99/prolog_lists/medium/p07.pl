my_flatten(L, [L]) :-  \+ is_list(L).
my_flatten([], []).
my_flatten([H|T], X) :- my_flatten(H, Y), my_flatten(T, Ys), append(Y, Ys, X).
