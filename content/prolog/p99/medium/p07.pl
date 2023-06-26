my_flatten([], []).
my_flatten(L, X) :- my_flatten_aux(L, X, []).
my_flatten_aux([H|T], L2, ACC) :- (is_list(H), append(ACC, H, K), subtract(H, L2, N), my_flatten_aux(T, N, K)) ;
    (not(is_list(H)), append(ACC, [H], K), select(H, L2, M), my_flatten_aux(T, M, K)).
