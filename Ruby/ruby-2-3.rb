# -*- coding: utf-8 -*-

# 写一个简单的grep程序，把文件中出现某词组的行全都打印出来。
# 这需要使用简单的正则表达式匹配，并从文件中读取各行。（这在Ruby中超乎想象地简单。）
# 如果你愿意的话，还可以加上行号。

def grep(pattern, filename)
  f = open(filename, 'r')
  f.each_with_index do |line, index|
    if line.index(pattern) || line.index(Regexp.new pattern)
      puts "line #{index + 1}: #{line}" 
    end
  end
end

grep('God', 'aFile')
puts
grep('\bon\b', 'aFile')
