// 写一个程序，把二维数组中的所有数相加。

a := list(list(1, 2, 3), list(4, 5, 6), list(7, 8, 9, 10))
s := 0
a foreach(i, v,
  s = s + (v sum)
  )
s println