# frozen_string_literal: true

# :nodoc
class Calculator
  attr_accessor :value1, :value2

  def initialize(_value1, value2)
    @value1 = value1
    @value2 = value2
  end

  # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
  def arithmetic_operators
    @addtion = value1 + value2
    @subtract = value1 - value_2
    @multiply = value1 * value2
    @divide = value1 / value2

    puts "sum of two numbers is #{@addtion}"
    puts "subtract of two numbers is #{@subtract}"
    puts "multiply of two numbers is #{@multiply}"
    puts "divide of two numbers is #{@divide}"
  rescue ZeroDivisionError
    puts 'Error: Division by zero is not allowed.'
  rescue ArgumentError
    puts 'Error: Invalid argument provided.'
  rescue TypeError
    puts 'Error: Invalid data type provided.'
  end
  # rubocop:enable Metrics/MethodLength, Metrics/AbcSize
end

puts 'Enter value 1:'
value1 = gets.chomp.to_i
puts 'Enter value 2:'
value2 = gets.chomp.to_i

output = Calculator.new(value1, value2)
output.arithmetic_operators
