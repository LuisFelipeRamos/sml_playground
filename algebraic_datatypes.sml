(*Days of the week datatype*)
datatype day = M | Tu | W | Th | F | Sa | Su;

fun is_weekend d: bool = d = Sa orelse d = Su;

(*Union datatype for Int and Real*)
datatype element = I of int | R of real;

fun get_real (F n) = n
  | get_real (I n) = real n;

(*Defining a Boolean Algebra*)

