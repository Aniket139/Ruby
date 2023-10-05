# frozen_string_literal: true

# :nodoc
class CalculatorMenu
  attr_accessor :value1, :value2

  def initialize(value1, value2)
    @value1 = value1
    @value2 = value2
  end

  # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
  def operations
    puts 'Enter your operator: '
    choice = gets.chomp

    case choice
    when '+'
      result = value1 + value2
      puts result
    when '-'
      result = value1 - value2
      puts result
    when '*'
      result = value1 * value2
      puts result
    when '/'
      result = value1 / value2
      puts result
    end
  end
  # rubocop:enable Metrics/MethodLength, Metrics/AbcSize
end

puts 'Enter number 1 :'
value1 = gets.chomp.to_i
puts 'Enter number 2 :'
value2 = gets.chomp.to_i

process = CalculatorMenu.new(value1, value2)
process.operations
