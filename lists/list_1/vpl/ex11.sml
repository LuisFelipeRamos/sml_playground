datatype btree = Leaf | Node of (btree * int * btree);

fun sumAll Leaf = 0
  | sumAll (Node(b1, m, b2)) = (sumAll b1) + m + (sumAll b2);
