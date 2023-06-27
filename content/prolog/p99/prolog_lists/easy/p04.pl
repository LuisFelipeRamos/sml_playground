my_length([], 0).
my_length([_|T], S) :- my_length(T, Z), S is Z + 1.
