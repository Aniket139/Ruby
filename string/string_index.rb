# frozen_string_literal: true

# :nodec
class StringIndex
  attr_accessor :index, :string

  def initialize(index, string)
    @index = index
    @string = string
  end

  def character_from_index
    if index >= 0 && index < string.length
      character = string[index]
      puts "Character at index #{index}"
      puts "Character is #{character}"
    else
      puts 'No character is present in given index'
    end
  end
end

puts 'Enter an String:'
string = gets.chomp

puts "Get charactor of given string `#{string}`"
puts 'Enter an index:'
index = gets.chomp.to_i

output = StringIndex.new(index, string)
output.character_from_index
