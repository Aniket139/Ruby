# frozen_string_literal: true

# :nodec
class Operators
  def initialize
    user_input
  end

  def user_input
    puts 'Enter value 1:'
    @value_1 = gets.chomp.to_i

    puts 'Enter value 2:'
    @value_2 = gets.chomp.to_i
  end

  def arithmetic_operators
    @addtion = @value_1 + @value_2
    @subtract = @value_1 - @value_2
    @multiply = @value_1 * @value_2
    @divide = @value_1 / @value_2

    puts "sum of two numbers is #{@addtion}"
    puts "subtract of two numbers is #{@subtract}"
    puts "multiply of two numbers is #{@multiply}"
    puts "divide of two numbers is #{@divide}"
  end
end

operator = Operators.new
operator.arithmetic_operators
