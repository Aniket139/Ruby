# frozen_string_literal: true

# :nodec
class DynamicMethodGeneration
  def self.create_method(name, behavior)
    define_method(name) do
      puts "Executing #{name} method with behavior: #{behavior}"
    end
  end
end

puts 'Enter the name of the method:'
method_name = gets.chomp

puts 'Enter the behavior of the method:'
method_behavior = gets.chomp

DynamicMethodGeneration.create_method(method_name, method_behavior)
DynamicMethodGeneration.new.send(method_name)
