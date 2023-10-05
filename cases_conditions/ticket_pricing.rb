# frozen_string_literal: true

# :nodec
class TicketPricing
  attr_accessor :age

  def initialize(age)
    @age = age
  end

  def calculate_ticket_price
    case age
    when 0..12
      puts 'Ticket Price: ₹200'
    when 13..100
      puts 'Ticket Price: ₹400'
    else
      puts 'Invalid age.'
    end
  end
end

puts 'Enter your age: '
age = gets.chomp.to_i
process = TicketPricing.new(age)
process.calculate_ticket_price
