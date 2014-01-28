//写一个程序，提供10次尝试机会，猜一个1～100之间的随机数。
//如果你愿意的话，可以在第一次猜测之后，提示猜大了还是猜小了。

randomNumber := (Random value(99) + 1) floor()
//randomNumber println
standardIO := File standardInput()

guess := method(n,
  if(n != randomNumber,
    if(n < randomNumber,
      "Too Small" println,
      "Too Big" println)
    )
)

10 repeat(
  n := standardIO readLine() asNumber()
  guess(n)
  if(n == randomNumber, "Got It!" println; break;)
)