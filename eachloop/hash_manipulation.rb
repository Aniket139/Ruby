# frozen_string_literal: true

# :nodoc
class HashManipulation
  attr_accessor :student_data, :highest, :lowest, :sum

  def initialize(student_data)
    @student_data = student_data
  end

  def process
    highest = 0
    lowest = student_data.values.first
    sum = 0
    student_data.each do |key, value|
      highest = value if value > highest
      lowest = value if value < lowest
      sum += value
    end
    print_marks(highest, lowest, sum)
  end

  def print_marks(highest, lowest, sum)
    puts "Highest mark: #{highest}"
    puts "Lowest lowest: #{lowest}"
    puts "Sum : #{sum}"
    average = sum / student_data.size
    puts "Average: #{average}"
  end
end

student_data = { Jay: 80, Vijay: 55, Ravi: 95, Raj: 60, Shubham: 90 }
score = HashManipulation.new(student_data)
score.process
