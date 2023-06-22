datatype area = RConst of real | AQuadrado of area | ARetangulo of area * area | ACirculo of area;

fun eval (RConst(r)) = r
  | eval (AQuadrado (a)) = (eval a) * (eval a)
  | eval (ARetangulo (a, b)) = (eval a) * (eval b)
  | eval (ACirculo (a)) = 3.14 * (eval a) * (eval a);