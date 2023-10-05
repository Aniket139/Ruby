# frozen_string_literal: true

# :nodoc
class MultiplicationTable
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def table
    # rubocop:disable Style/For
    for i in 1..10
      result = number * i
      puts "#{number} x #{i} = #{result}"
    end
    # rubocop:enable Style/For
  end
end

print 'Enter a number: '
number = gets.chomp.to_i
puts '---------------------------------------'
process = MultiplicationTable.new(number)
process.table
