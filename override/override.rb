# frozen_string_literal: true

# :nodec
class Override
  def method1
    puts 'This is parent class Method'
  end
end

# :nodec
class Child < Override
  def method1
    puts 'This is child class Method'
  end
end

begin
  obj = Child.new
  # obj.method_1
  obj.method_2
rescue NoMethodError => e
  puts 'method is not present'
  puts "------------------------ #{e}"
  # puts "+++++++++++++++++ #{e.message}"
end
