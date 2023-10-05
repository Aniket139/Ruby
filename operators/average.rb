# frozen_string_literal: true

# :nodec
class Average
  def initialize(mark1, mark2, mark3)
    @mark1 = mark1
    @mark2 = mark2
    @mark3 = mark3
  end

  def calculate
    @sum = @mark1 + @mark2 + @mark3
    @average = @sum / 3
    puts "Average marks is #{@average}"
  end
end

student = Average.new(30, 40, 50)
student.calculate
