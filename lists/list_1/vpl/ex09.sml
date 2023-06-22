datatype dinheiro = Centavos of int | Reais of real | Pessoa_Dinheiro of (string
* real);

fun amount (Centavos c) = c 
  | amount (Reais r) = round (r * 100.0)
  | amount (Pessoa_Dinheiro( _ , r)) = round (r * 100.0);
