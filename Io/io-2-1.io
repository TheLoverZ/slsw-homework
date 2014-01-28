// 斐波那契数列以两个1开始，每一个数都是之前两个数之和：1，1，2，3，5，8，13，21，以此类推。
// 写一个计算第n个斐波那契数的程序。这里fib(1)会得到1，fib(4)会得到3。
// 如果你能用递归和循环两种方法写出来，我将给你额外加分。

// recursion version
fib := method(n, if(n == 1, return 1, if(n == 0, return 0, return fib(n - 1) + fib(n -2))))

//loop version
fib2 := method(n, (a := 1; b := 1; for(i, 3, n, (c := a; a := a + b; b := c)); a))

fib(1) println
fib(2) println
fib(3) println
fib(4) println
fib(5) println

fib2(1) println
fib2(2) println
fib2(3) println
fib2(4) println
fib2(5) println