# frozen_string_literal: true

# :nodoc
class FilterAndTransform
  attr_accessor :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def filter
    @array = []
    numbers.each do |num|
      @array << num if num.even?
    end
    puts @array
  end

  def transform
    @multiply = []
    @array.each do |number|
      @multiply << number * 2
    end
    puts @multiply
  end
end

numbers = [1, 2, 3, 4, 5]
process = FilterAndTransform.new(numbers)
process.filter
process.transform
