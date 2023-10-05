# frozen_string_literal: true

# :nodoc
class ArraySumOfProduct
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def sum_of_product
    puts 'Enter Product :'
    product = gets.chomp.to_i
    array.each do |i|
      @multiply = i * product
      @sum = i + product
      puts "#{@multiply}----------#{@sum}"
    end
  end
end

array = [2, 5, 6, 8, 10]
process = ArraySumOfProduct.new(array)
process.sum_of_product
