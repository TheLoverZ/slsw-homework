# -*- coding: utf-8 -*-

require 'pry'

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
