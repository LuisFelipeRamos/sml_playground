fun max [] = 0
  | max (x::xs) = let val currMax = (max xs) 
                in
                  if x > currMax then x else currMax
                end;

max [2, 3, ~1, 4, 67, 32];
