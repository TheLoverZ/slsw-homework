Number div := Number getSlot("/")

Number / := method(n,
  if (n == 0,
    "WARNING: cannot divide by zero", 
    div(n)
    )
  )

(5 / 2) println
(5 / 0) println