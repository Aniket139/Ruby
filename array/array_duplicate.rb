# frozen_string_literal: true

# :nodoc
class Duplicate
  attr_accessor :first_array, :second_array, :duplicates

  def initialize
    input_array
  end

  def input_array
    @first_array = [1, 2, 3, 4]
    @second_array = [3, 6, 4, 5, 7, 8]
    @duplicates = []
  end

  def find_duplicate_array
    first_array.each do |element|
      duplicates << element if second_array.include?(element)
    end
    puts "Duplicate values: #{duplicates}"
  end
end

dup = Duplicate.new
dup.find_duplicate_array
