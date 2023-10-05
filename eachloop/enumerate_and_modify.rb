# frozen_string_literal: true

# :nodoc
class EnumerateAndModify
  attr_accessor :fruits

  def initialize(fruits)
    @fruits = fruits
  end

  def index_of_array
    fruits.each.with_index(1) do |name, index|
      puts " #{index} : #{name}"
    end
  end
end

fruits = %w[Apple Banana Orange Mango Pineapple]
process = EnumerateAndModify.new(fruits)
process.index_of_array
