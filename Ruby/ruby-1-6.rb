# -*- coding: utf-8 -*-

# 加分题：如果你感觉意犹未尽，还可以写一个选随机数的程序。
# 该程序让玩家猜随机数是多少，并告诉玩家是猜大了还是猜小了。
#（提示：rand(10)可产生0～9的随机数，gets可读取键盘输入的字符串，你要把输入字符串转换成整数。）

random_number = rand(10)
while true
  user_input = gets.to_i
  if user_input < random_number
    puts "Too small."
  elsif user_input > random_number
    puts "Too big."
  else
    puts "You are brilliant!"
    break
  end
end
