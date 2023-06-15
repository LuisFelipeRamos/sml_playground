dupList([], []).
dupList([H|T], [G|[G|K]]) :- dupList(T, K), H=G.

dupList([1, 2, 3],[1, 1, 2, 2, 3, 3]).