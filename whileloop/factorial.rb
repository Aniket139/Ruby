# frozen_string_literal: true

# :nodoc
class Factorial
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def factorial_process
    i = 1
    factorial = 1
    while i <= number
      factorial *= i
      i += 1
    end
    puts "Factorial Number is :#{factorial}"
  end
end

puts 'Enter Number :'
number = gets.chomp.to_i
process = Factorial.new(number)
process.factorial_process
