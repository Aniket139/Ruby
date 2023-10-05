# frozen_string_literal: true

# :nodec
class Animal
  def speak
    puts 'Animal makes a sound'
  end
end

# :nodec
class Dog < Animal
  def speak
    puts 'Dog barks'
  end
end

animal = Animal.new
animal.speak

dog = Dog.new
dog.speak

# class Animal
# def speak
#     puts "Animal makes a sound"
#   end

#   def speak
#     puts "Dog barks"
#   end
# end

# animal = Animal.new
# animal.speak
