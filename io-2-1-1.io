//recursion version
fib := method(n, if(n == 1, return 1, if(n == 0, return 0, return fib(n - 1) + fib(n -2))))

fib(1) println
fib(2) println
fib(3) println
fib(4) println
fib(5) println