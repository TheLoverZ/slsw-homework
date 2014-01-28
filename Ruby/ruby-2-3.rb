# -*- coding: utf-8 -*-

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
