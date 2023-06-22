fun cumSum [] = []
  | cumSum (x1::x2::xs) = x1::(cumSum ((x1 + x2)::xs))
  | cumSum (x::xs) = [x];