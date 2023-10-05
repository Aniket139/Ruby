# frozen_string_literal: true

# :nodoc
class PasswordGuessing
  attr_accessor :correct_password

  def initialize(correct_password)
    @correct_password = correct_password
  end

  def while_process
    guess_count = 0
    while guess_count < 3
      puts 'Enter your password :'
      guess = gets.chomp.to_s
      guess_count += 1
      
      if guess == correct_password
        puts 'Password matched'
        break
      else
        puts " attempts 3 times : #{guess_count}"
        puts 'Wrong password'
      end
    end
  end
end

correct_password = 'aniket'
process = PasswordGuessing.new(correct_password)
process.while_process