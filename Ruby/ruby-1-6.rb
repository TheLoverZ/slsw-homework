# -*- coding: utf-8 -*-

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
