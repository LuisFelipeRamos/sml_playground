fun split [] = ([], [])
  | split (x1::x2::xs) = (x1::(#1 (split xs)), x2::(#2 (split xs)))
  | split (x::nil) = ([x], []);
