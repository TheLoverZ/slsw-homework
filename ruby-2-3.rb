# -*- coding: utf-8 -*-

def grep(pattern, filename)
  f = open(filename, 'r')
  f.each_with_index do |line, index|
    puts "line #{index + 1}: #{line}" if line.index(pattern)
  end
end

grep('God', 'aFile')
