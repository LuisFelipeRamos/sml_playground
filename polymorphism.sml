datatype ilist = E | L of int * ilist;

fun first (L(h, _)) = h
  | first (E) = raise Match;

fun rest (L(_, t)) = t
  | rest (E) = raise Match;

fun last (E) = raise Match
  | last (L(h, E)) = h
  | last (L(h, t)) = last t;

(*Parametric list*)
datatype 'a plist = E | L of 'a * 'a plist;


(*Overloading*)

val a = 1 + 2;
val b = 1.0 + 2.0;


(*Equality-testable types*)
type T0 = int * real;
type T1 = int * real;

fun foo (s1: T1) (s2: T0) = (#1 s1, #2 s2);

val x1: T0 = (1, 3.0);
val x2: T1 = (2, 4.0);

foo x1 x2;
