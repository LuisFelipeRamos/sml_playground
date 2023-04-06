exception zeroToZero;

fun pow 0 0 = raise zeroToZero
  | pow n 0 = 1
  | pow 1 e = 1
  | pow n e = n * (pow n (e - 1));

