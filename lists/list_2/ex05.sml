fun count_main 0 = []
  | count_main n = let fun count x = if x < n then (x::(count(x + 1))) else [x]
        in
            count(1)
        end;


(*2.3 be nao sei se segue as regars*)