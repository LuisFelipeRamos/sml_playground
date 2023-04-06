fun allTrue [] = true 
  | allTrue (x::xs) = x andalso allTrue xs;


