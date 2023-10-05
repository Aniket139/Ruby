# frozen_string_literal: true

# :nodec
class Exersice
  attr_accessor :n1, :n2, :n3

  def initialize
    @n1, @n2, @n3 = gets.chomp.split.map(&:to_i)
  end

  def process1
    count = 0
    (n1..n2).each do |num|
      if (num % n3).zero?
        count += 1
        print "#{num},"
      end
    end
    puts "Counts: #{count}"
  end

  def process2
    count = 0
    (n1..n2).each do |num|
      if (num % n3).zero?
        count += 1
        print "#{num},"
      end
    end
    puts "Counts: #{count}"
  end
end

output = Exersice.new
output.process1
output.process2
