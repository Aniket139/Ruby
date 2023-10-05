# frozen_string_literal: true

# :nodec
class Characters
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def process
    @letter_count = string.count('a-zA-Z')
    @space_count = string.count(' ')
    @number_count = string.count('0-9')
    @other_count = string.size - @letter_count - @space_count - @number_count
  end

  def output
    puts "letters : #{@letter_count}"
    puts "space : #{@space_count}"
    puts "numbers : #{@number_count}"
    puts "other : #{@other_count}"
  end
end

string_input = Characters.new(' 2023 © All rights reserved. Designed By Aniket Viradiya.')
string_input.process
string_input.output
