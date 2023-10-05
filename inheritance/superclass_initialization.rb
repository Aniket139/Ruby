# frozen_string_literal: true

# :nodec
class Vehicle
  attr_accessor :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end
end

# :nodec
class Car < Vehicle
  attr_accessor :year

  def initialize(make, model, year)
    super(make, model)
    @year = year
  end
end

car = Car.new('Rolls-Royce', 'Ghost', 2022)
puts "Make: #{car.make}"
puts "Model: #{car.model}"
puts "Year: #{car.year}"
