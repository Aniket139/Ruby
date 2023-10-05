# frozen_string_literal: true

# :nodec
class Boolean
  attr_accessor :value

  def initialize
    puts 'Enter value :'
    @value = gets.chomp.to_i
  end

  def find_odd_even
    if value.even?
      puts "#{value}  Even(false)"
    else
      puts "#{value}  Odd (true)"
    end
    # puts value.odd?  easy
  end
end

boolean = Boolean.new
boolean.find_odd_even
