# frozen_string_literal: true

# :nodoc
class Fibonacci
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def fibonacci_sequence
    num2 = 1
    count = 1
    next_number = num2

    while count <= number
      puts next_number
      count += 1
      num1 = num2
      num2 = next_number
      next_number = num1 + num2
    end
  end
end

puts 'Enter numbers :'
number = gets.chomp.to_i
puts '----------------------------------------'
process = Fibonacci.new(number)
process.fibonacci_sequence
