fun max [] = 0
  | max (x::xs) = let val currMax = if xs = [] then x else (max xs) 
                in
                  if x > currMax then x else currMax
                end;