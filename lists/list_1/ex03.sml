fun sumLists [] [] = []
  | sumLists (x1::xs1) (x2::xs2) = [x1 + x2]::(sumLists xs1 xs2);
