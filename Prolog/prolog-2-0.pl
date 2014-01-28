/* 一些斐波那契数列和阶乘的实现。它们是怎么工作的？ */

/* 斐波那契 */

fib(0, 0).
fib(1, 1).
fib(X, Y) :- P is X - 1, fib(P, Z1), Q is X - 2, fib(Q, Z2), Y is Z1 + Z2, !.

/* 输出 */

/*
| ?- fib(5, Y).
Y = 5
yes

| ?- fib(6, Y).
Y = 8
yes

| ?- fib(7, Y).
Y = 13
yes

| ?- fib(8, Y).
Y = 21
yes
*/

/* 阶乘 */
fac(0, 1).
fac(X, Y) :- P is X - 1, fac(P, Z), Y is Z * X, !.

/*
输出：

| ?- fac(2, Y).
Y = 2
yes

| ?- fac(5, Y).
Y = 120
yes
*/

/* 最后的感叹号如果不加会发生如下错误：
| ?- fac(5, Y).
Y = 120 ? a
Fatal Error: local stack overflow (size: 16384 Kb, reached: 16384 Kb, 
  environment variable used: LOCALSZ)
*/