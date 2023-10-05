# frozen_string_literal: true

# :nodoc
class ReverseArray
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def reverse_array
    start_index = 0
    end_index = array.length - 1

    while start_index < end_index
      temp = array[start_index]
      array[start_index] = array[end_index]
      array[end_index] = temp
      start_index += 1
      end_index -= 1
    end
    puts array
  end
end

puts 'Enter your number :'
array = gets.chomp.split.map(&:to_i)
rev_array = ReverseArray.new(array)
rev_array.reverse_array
