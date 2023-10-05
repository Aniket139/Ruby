# frozen_string_literal: true

# :nodec
class Animal
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

# :nodec
class Dog < Animal
  attr_accessor :breed

  def initialize(name, age, breed)
    super(name, age)
    @breed = breed
  end
end

animal = Animal.new('Buddy', 5)
dog = Dog.new('Tomy', 3, 'Siberian Husky')

puts "Name : #{animal.name}"
puts "Age : #{animal.age}"
puts '--------------------------------'
puts "Dog Name :#{dog.name}"
puts "Age : #{dog.age}"
puts "Breed : #{dog.breed}"
