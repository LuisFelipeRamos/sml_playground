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
        | fact x = x * fact (x - 1)

        val halfPi = Math.pi / 2.0

        fun pow (0, 0) = ~1
            | pow (n, 0) = 1
            | pow (0, n) = 0
            | pow (n, m) = n * pow (n, m - 1)
        
        fun double n = n * 2
end;