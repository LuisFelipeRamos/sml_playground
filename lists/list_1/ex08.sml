fun allTrue [] = false
  | allTrue (x::xs) = x andalso if xs = [] then x else allTrue xs;