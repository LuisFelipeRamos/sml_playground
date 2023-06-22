fun square n = n * n;

fun sum (a, b) = a + b;

fun compose (f, g, a, b) = f (g (a, b));

compose (square, sum, 4, 5);
