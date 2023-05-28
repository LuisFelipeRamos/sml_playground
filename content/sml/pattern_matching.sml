(*Sum all of the integer elements in a list*)
fun sum [] = 0
  | sum [x] = x
  | sum (x::xs) = x + sum(xs);

(*Fibonacci*)
fun fibonacci 0 = 1
  | fibonacci 1 = 1
  | fibonacci n = fibonacci (n - 1) + fibonacci (n - 2);

(*Fast Fibonacci - returns list of first n fibonacci numbers*)
fun fast_fibonacci 0 = [1]
  | fast_fibonacci 1 = [1, 1]
  | fast_fibonacci n = let val a::b::l = fast_fibonacci(n - 1) in
    (a + b)::a::b::l
                  end


