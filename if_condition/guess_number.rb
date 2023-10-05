# frozen_string_literal: true

# :nodoc
class GuessNumber
  attr_accessor :number
 
  def generate_number
    @number = rand(1..100)
    puts 'Guess the number between 1 and 100.'
    puts '-------------------------------------'
    @guess_count = 0
  end

  def guess_numbers
    while @guess_count < 3
      puts 'Enter your guess:'
      guess = gets.chomp.to_i

      if guess < number
        puts 'Too low. Try again'
      elsif guess > number
        puts 'Too high. Try again'
      end
      @guess_count += 1
    end
  end
end

process = GuessNumber.new
process.generate_number
process.guess_numbers
