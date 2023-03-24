(*Days of the week datatype*)
datatype day = M | Tu | W | Th | F | Sa | Su;

fun is_weekend d: bool = d = Sa orelse d = Su;

(*Union datatype for Int and Real*)
datatype element = I of int | R of real;

fun get_real (R n) = n
  | get_real (I n) = real n;

(*Defining a Boolean Algebra*)
datatype Proposition = TRUE
                     | FALSE
                     | NOT of Proposition
                     | AND of Proposition * Proposition
                     | OR of Proposition * Proposition;

fun eval TRUE = true
  | eval FALSE = false 
  | eval (NOT p) = not (eval p)
  | eval (AND (p1, p2)) = (eval p1) andalso (eval p2)
  | eval (OR (p1, p2)) = (eval p1) orelse (eval p2);


(*Defining a binary tree*)
datatype btree = Leaf | Node of (btree * int * btree);

fun new_tree n = Node(Leaf, n, Leaf);

fun root_value (Leaf) = ~1
  | root_value (Node(_, v, _)) = v;

fun left_child (Leaf) = raise Match
  | left_child (Node(l, _, _)) = l;

fun occurs n (Leaf) = false
  | occurs n (Node(l, m, r)) = (m = n) orelse (occurs m l) orelse (occurs m r);

(*Insert considering that all nodes to the left of a generic node K are smaller
* or have equal value to K*)
fun insert n (Leaf) = new_tree n
  | insert n (Node (l, m, r)) = 
    if (n < m) then
      Node(insert n l, m, r)
    else
      Node(l, m, insert n r);

(*OBS: insert doesn't change the tree, but creates a new one with the new node
* inserted*)

(*Traverse a btree and put values in list*)
fun traverse (Leaf) = []
  | traverse (Node (l, m, r)) = 
  let val l1 = traverse l;
    val l2 = traverse r
  in 
    l1 @ [m] @ l2 
  end;

(*Number of internal nodes*)
fun size(Leaf) = 0
  | size (Node (l, m, r)) = size(l) + 1 + size(r);

(*Mirror*)
fun mirror (Leaf) = Leaf
  | mirror (Node(l, m, r)) = Node(mirror r, m, mirror l);


(*Insert new node in btree and keeps it balanced TODO*)
fun insert_balanced _ Leaf = Leaf
  | insert_balanced n (Node(l, m, r)) = Leaf;
