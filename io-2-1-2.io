//loop version
fib := method(n, (a := 1; b := 1; for(i, 3, n, (c := a; a := a + b; b := c)); a))