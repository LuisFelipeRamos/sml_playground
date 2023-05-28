datatype aexpr = IConst of int | Plus of aexpr * aexpr | Minus of aexpr * aexpr;

fun eval (IConst (value)) = value
  | eval (Plus (e1, e2)) = (eval e1) + (eval e2)
  | eval (Minus (e1, e2)) = (eval e1) - (eval e2);
eval Plus(IConst(5), IConst(3));
eval Plus(Minus(IConst(3), IConst(2)), IConst(21));
