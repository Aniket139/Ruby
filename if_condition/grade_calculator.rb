# frozen_string_literal: true

# :nodoc
class GradeCalculator
  attr_accessor :grade

  def initialize(grade)
    @grade = grade
  end

  def grade_calculator
    if grade >= 90 && grade <= 100
      puts 'Grade A'
    elsif grade >= 80 && grade <= 90
      puts 'Grade B'
    elsif grade >= 60 && grade <= 80
      puts 'Grade C'
    else
      puts 'Fails'
    end
  end
end

puts 'Enter Grade :'
grade = gets.chomp.to_i
process = GradeCalculator.new(grade)
process.grade_calculator
