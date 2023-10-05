# frozen_string_literal: true

# :nodoc
class TemperatureConverter
  attr_accessor :temperature

  def initialize(temperature)
    @temperature = temperature
  end

  def temperature_converter
    if temperature > 30
      puts "It's hot"
    else
      puts "It's not hot"
    end
  end
end

puts 'Enter temperature :'
temperature = gets.chomp.to_i
process = TemperatureConverter.new(temperature)
process.temperature_converter
