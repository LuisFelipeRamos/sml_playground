fun good_max [] = 0
  | good_max (x::xs) = let val currMax = if xs = [] then x else (good_max xs) 
                in
                  if x > currMax then x else currMax
                end;