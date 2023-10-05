# frozen_string_literal: true

# :nodec
module Sort
  def sorting_numeric
    n = array.length
    (0...n - 1).each do |i|
      (0...n - i - 1).each do |j|
        next unless array[j] > array[j + 1]

        temp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = temp
      end
    end
    puts "Sorted arrayeric array:#{array}"
  end
end

# :nodec
class Sorting
  include Sort

  attr_accessor :array

  def initialize(array)
    @array = array
  end
end

array = [1, 5, 2, 7, 9, 15, 12] # number
# array = ["A", "E", "F", "B"] # string
sorting_obj = Sorting.new(array)
sorting_obj.sorting_numeric
