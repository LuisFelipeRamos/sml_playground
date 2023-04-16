fun split [] = ([], [])
  | split (x1::x2::xs) = (x1::(#1 (split xs)), x2::(#2 (split xs)))
  | split (x::nil) = ([x], []);

split([1,2,3,8,4,5, 4356])






(*2.6 be*)