# frozen_string_literal: true

# :nodoc
class PrimeNumber
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def check_prime_number
    i = 1
    while i < number
      if number.even?
        puts 'Not Prime Number'
      else
        puts 'Prime Number'
      end
      break
    end
  end
end

puts 'Enter your Number :'
number = gets.chomp.to_i
process = PrimeNumber.new(number)
process.check_prime_number
