# frozen_string_literal: true

# :nodoc
class AgeVerification
  attr_accessor :age

  def initialize(age)
    @age = age
  end

  def age_verification
    if age >= 18
      puts 'Eligible'
    else
      puts 'Not Eligible'
    end
  end
end

puts 'Enter your age :'
age = gets.chomp.to_i
process = AgeVerification.new(age)
process.age_verification
