fun multiPairs ([], []) = [] | multiPairs ((x1::xs1), (x2::xs2)) = (x1 *
  x2)::(multiPairs (xs1, xs2));
