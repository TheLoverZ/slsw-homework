# -*- coding: utf-8 -*-

a = []
16.times { |i| a << i }

# without each_slice method
num = 0
a.each do |i|
  puts "#{a[num]}, #{a[num + 1]}, #{a[num + 2]}, #{a[num + 3]}" if (num % 4).zero?
  num += 1
end

# with each_slice method
a.each_slice(4) { |a| p a }
