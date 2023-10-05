# frozen_string_literal: true

# :nodec
module Company
  attr_accessor :company_name
end

# :nodec
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

# :nodec
class Employee < Person
  include Company

  def full_name
    puts "---------------name #{full_name}"
  end
end

Employee.new('Shivam Singh', 25)
puts 'Employee name: '

# module Person
#   attr_accessor :name, :age
# end

# module Company
#   attr_accessor :company_name
# end

# class Employee
#   include Person
#   include Company
# end

# employee = Employee.new
# employee.name = "Shivam Singh"
# employee.age = 25
# employee.company_name = "Google"
# puts "Employee name: #{employee.name}"
# puts "Employee age: #{employee.age}"
# puts "Company name: #{employee.company_name}"
