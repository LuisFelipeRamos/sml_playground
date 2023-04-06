fun split "" = []
  | split txt = String.tokens (fn c => ( 
                      Char.compare(c, #",") = EQUAL
                      orelse Char.compare(c, #".") = EQUAL
                      orelse Char.compare(c, #"-") = EQUAL 
                      orelse Char.compare(c, #" ") = EQUAL)) txt; 


split "Bom dia,pra-você";

