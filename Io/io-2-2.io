// 在分母为0的情况下，如何让运算符/返回0？

Number div := Number getSlot("/")

Number / := method(n,
  if (n == 0,
    "divided by 0", 
    div(n)
    )
  )

(5 / 2) println
(5 / 0) println