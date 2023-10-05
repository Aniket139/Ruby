# frozen_string_literal: true

# :nodec
class MyClass
  def method_missing(method_name)
    puts "The method #{methd_name} is not defined."
  end
end
  
my_object = MyClass.new
my_object.process
  