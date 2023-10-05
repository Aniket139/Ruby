# frozen_string_literal: true

# :nodec
module FullName
  def full_name
    "#{first_name} #{last_name}"
  end
end

# :nodec
class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

# :nodec
class Student < Person
  include FullName

  attr_accessor :student_id

  def initialize(first_name, last_name, student_id)
    super(first_name, last_name)
    @student_id = student_id
  end
end

# :nodec
class Teacher < Person
  include FullName

  attr_accessor :teacher_id, :subject

  def initialize(first_name, last_name, teacher_id, subject)
    super(first_name, last_name)
    @teacher_id = teacher_id
    @subject = subject
  end
end

# Example usage
student = Student.new('John', 'Doe', '12345')
teacher = Teacher.new('Jane', 'Smith', 'T9876', 'Mathematics')

puts "Student: #{student.full_name}, ID: #{student.student_id}"
puts "Teacher: #{teacher.full_name}, ID: #{teacher.teacher_id}, Subject: #{teacher.subject}"
