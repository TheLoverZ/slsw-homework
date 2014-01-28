# -*- coding: utf-8 -*-

# 修改前面的 CSV 应用程序，使它可以用 each 方法返回 CsvRow 对象。
# 然后，在 CsvRow 对象上，对某个给定标题，用 method_missing 方法返回标题所在列的值。
# 比如，对于包含以下内容的文件：one, twolions, tigersAPI 可以像下面这样操作：
# csv = RubyCsv.newcsv.each {|row| puts row.one}
# 这会打印出 "lions".

module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    def each(&block)
      block.call self
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

  end
end

class RubyCsv
  def method_missing(name, *args)
    num = name.to_s
    case num
    when "one"
      self.csv_contents.first.first
    when "two"
      self.csv_contents.first.last
    end
  end

  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
#puts m.headers.inspect
#puts m.csv_contents.inspect
m.each { |row| puts row.one }
