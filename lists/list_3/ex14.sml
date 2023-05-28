exception NegativeValue

signature MyMath = 
    sig
        val fact: int -> int
        val halfPi: real
        val pow: int * int -> int
        val double: int -> int
    end;

structure MyMathLib :> MyMath = 
    struct

        fun fact 0 = 1
        | fact n = if n > 0 then n * fact (n - 1) else raise NegativeValue

        val halfPi = Math.pi / 2.0

        fun pow (n, 0) = 1
            | pow (n, m) = if n > 0 then n * pow (n, m - 1) else raise NegativeValue
        
        fun double n = if n > 0 then n * 2 else raise NegativeValue
    end;

fun useMyMathLib (n, s) = 
    let val r = case (n, s) of 
      (n, "fact") => MyMathLib.fact(n)
    | (n, "pow") => MyMathLib.pow(n, n)
    | (n, "double") => MyMathLib.double(n)
    |  _ => raise Match
    in 
        print(Int.toString(r))
    end
    handle NegativeValue => print("Não posso lidar com números negativos!")
