# frozen_string_literal: true

# :nodec
class DayofWeek
  attr_accessor :input_day_number

  def initialize(input_day_number)
    @input_day_number = input_day_number
  end

  def day_of_the_week
    case input_day_number
    when 1
      puts 'Monday'
    when 2
      puts 'Tuesday'
    when 3
      puts 'Wednesday'
    when 4
      puts 'Thursday'
    when 5
      puts 'Friday'
    when 6
      puts 'Saturday'
    when 7
      puts 'Sunday'
    else
      puts 'Invalid input. Please enter a number between 1 and 7.'
    end
  end
end

puts 'Enter a number between 1 and 7:'
input_day_number = gets.chomp.to_i
process = DayofWeek.new(input_day_number)
process.day_of_the_week
