my_lastb1(B, [B, _]).
my_lastb1(X, [_|T]) :- my_lastb1(X, T).

