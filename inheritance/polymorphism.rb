# frozen_string_literal: true

# :nodec
class Shape
  def calculate_area
    puts 'not defind method'
  end
end

# :nodec
class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def calculate_area
    Math::PI * @radius**2
  end
end

# :nodec
class Rectangle < Shape
  def initialize(length, width)
    @length = length
    @width = width
  end

  def calculate_area
    @length * @width
  end
end

circle = Circle.new(7)
rectangle = Rectangle.new(3, 4)

puts "Area of circle: #{circle.calculate_area}"
puts "Area of rectangle: #{rectangle.calculate_area}"
