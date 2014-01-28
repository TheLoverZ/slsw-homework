# -*- coding: utf-8 -*-

# 有一个数组，包含16个数字。
# 仅用each方法打印数组中的内容，一次打印4个数字。
# 然后，用可枚举模块的each_slice方法重做一遍。

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
