datatype perimetro = RConst of real | PQuadrado of perimetro | PRetangulo of perimetro * perimetro | PCirculo of perimetro | PTriangulo of perimetro * perimetro * perimetro;

fun eval (RConst(r)) = r
  | eval (PQuadrado (p)) = 4.0 * (eval p)
  | eval (PRetangulo (p, q)) = (2.0 * (eval p)) + (2.0 * (eval q))
  | eval (PCirculo (p)) = 2.0 * 3.14 * (eval p)
  | eval (PTriangulo (p, q, r)) = (eval p) + (eval q) + (eval r);