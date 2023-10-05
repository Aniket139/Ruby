# frozen_string_literal: true

# :nodoc
class StringConcatenation
  def concate_string
    puts 'Enter number :'
    number = gets.chomp.to_i
    number.times do |_i|
      puts 'Hello world'
    end
  end
end

process = StringConcatenation.new
process.concate_string
