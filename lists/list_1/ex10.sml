datatype Planet = Mercurio | Venus | Terra | Marte | Jupiter | Saturno | Urano |
Netuno;

fun planetAge (0, _) = 0
  | planetAge (m, Mercurio) = round((real m / 12.0) * 88.0)
  | planetAge (m, Venus) = round((real m / 12.0) * 225.0)
  | planetAge (m, Terra) = round((real m / 12.0) * 365.0)
  | planetAge (m, Marte) = round((real m/ 12.0) * 687.0)
  | planetAge (m, Jupiter) = round((real m/ 12.0) * 4332.0)
  | planetAge (m, Saturno) = round((real m/ 12.0) * 10760.0)
  | planetAge (m, Urano) = round((real m/ 12.0) * 30681.0)
  | planetAge (m, Netuno) = round((real m/ 12.0) * 60190.0);
