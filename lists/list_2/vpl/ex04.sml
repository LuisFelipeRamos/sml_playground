datatype UnOp = Not;
datatype BinOp = Add | Sub | Mul | Gt | Eq | Or;
datatype Sexpr = IConst of int | Op1 of UnOp * Sexpr | Op2 of BinOp * Sexpr * Sexpr;
Control.Print.printDepth := 1024;
fun simplify (Op2(Add, IConst(0), e)) = (simplify e)
    | simplify (Op2(Add, e, IConst(0))) = (simplify e)
    | simplify (Op2(Sub, e, IConst(0))) = (simplify e)
    | simplify (Op2(Mul, IConst(1), e)) = (simplify e)
    | simplify (Op2(Mul, e, IConst(1))) = (simplify e)
    | simplify (Op2(Mul, IConst(0), _)) = (IConst(0))
    | simplify (Op2(Mul, _, IConst(0))) = (IConst(0))
    | simplify (Op2(Sub, e1, e2)) = let val e1_s = (simplify e1); val e2_s = (simplify e2)
                in
                    if (e1_s = e2_s) then (IConst(0)) else
                    if ((e1 = e1_s) andalso (e2 = e2_s)) then (Op2(Sub, e1, e2)) else (simplify (Op2(Sub, e1_s, e2_s)))
                end
    | simplify (Op1(Not, Op1(Not, e))) = (simplify e)
    | simplify (Op2(Or, e1, e2)) = let val e1_s = (simplify e1); val e2_s = (simplify e2)
                in
                    if (e1_s = e2_s) then (e1_s) else (Op2(Or, e1_s, e2_s))
                end
    | simplify (Op1 (Not, e)) = let val e_s = (simplify e)
                in 
                    if (e = e_s) then (Op1(Not, e)) else (simplify (Op1(Not, e_s)))
                end
    | simplify  (Op2(Op, e1, e2)) = let val e1_s = (simplify e1); val e2_s = (simplify e2)
                in
                    if ((e1 = e1_s) andalso (e2 = e2_s)) then (Op2(Op, e1, e2)) else (simplify (Op2(Op, e1_s, e2_s)))
                end
    | simplify e = (e);