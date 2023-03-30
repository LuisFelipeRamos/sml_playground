val a = 10;

fun f x = x + a;
f 5;

val h = f;
f 5;
h 5;

fun g x = 2 * x;

val p = (f, g);

val l = [f, g];

fun app (f, x) = f x;
app (hd l, 5);

(* Anonymous functions *)

val f2 = (fn x => ~x);

f2 3;

(fn x => ~x) 3;

(* Multiple arguments *)
fun f0 (x, y) = x + y;
f0(1, 2);

fun f1 x = fn y => x + y;
f1 1 2;

(* Combinators *)

fun compose f g x = f (g x);

fun f x = x + 1;
fun g x = 2 * x;
val l = [f, g];
hd (tl l) 5;

compose hd tl l 5;
(compose hd tl l) 5;

(* Map *)

map;

map ~ [1, 2, 3];

map (fn x => ~x) [1, 2, 3];
map (fn x => x ^ " ") ["a", "b", "c"];

fun mymap _ [] = []
  | mymap f (x::xs) = (f x)::(mymap f xs);

mymap ~ [1, 2, 3];

(* Fold left *)

foldl (op +) 0 [1, 2, 3];

foldl;

fun add (x, y) = x + y;
foldl add 0 [1, 2, 3, 4, 5];
foldl (fn (x, y) => x + y) 0 [1, 2, 3, 4, 5];

foldl (op ^) "" ["a", "b", "c"];

fun myfoldl _ acc [] = acc
  | myfoldl f acc (x::xs) = let val newAcc = (f x acc)
                  in
                    myfoldl f newAcc xs
                  end;

myfoldl (fn x => fn y => x ^ y) "" ["a", "b", "c"];

(* Fold right *)

foldr;
foldr (fn (x, y) => x ^ y) "" ["a", "b", "c"];

fun myfoldr _ acc [] = acc
  | myfoldr f acc (x::xs) = let val newAcc = myfoldr f acc xs
                in 
                  f x newAcc
                end;

myfoldr (fn x => fn y => x ^ y) "" ["a", "b", "c"];

(* Filter *)

fun filter _ [] = []
  | filter p (x::xs) = if p x then x::(filter p xs) else filter p xs;

filter (fn x => x > 0) [1, 2, ~1, ~12, 12];

