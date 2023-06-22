datatype expr = IConst of int | Plus of expr * expr | Minus of expr * expr
              | Multi of expr * expr | Div of expr * expr | Max of expr * expr
              | Min of expr * expr | Eq of expr * expr | Gt of expr * expr;

fun eval (IConst(i)) = i
  | eval (Plus (e1, e2)) = (eval e1) + (eval e2)
  | eval (Minus (e1, e2)) = (eval e1) - (eval e2)
  | eval (Multi (e1, e2)) = (eval e1) * (eval e2)
  | eval (Div (e1, e2)) = let val e2_value = (eval e2)
          in
            if e2_value = 0 then 0 else (eval e1) div e2_value
          end
  | eval (Max (e1, e2)) = let val e1_value = (eval e1); val e2_value = (eval e2)
                    in
                      if e1_value >= e2_value then e1_value else e2_value
                   end
  | eval (Min (e1, e2)) = let val e1_value = (eval e1); val e2_value = (eval e2)
                    in
                      if e1_value < e2_value then e1_value else e2_value
                   end
  | eval (Eq (e1, e2)) = let val e1_value = (eval e1); val e2_value = (eval e2)
                    in
                      if e1_value = e2_value then 1 else 0
                   end
  | eval (Gt (e1, e2)) = let val e1_value = (eval e1); val e2_value = (eval e2)
                    in 
                      if e1_value > e2_value then 1 else 0
                   end;