# frozen_string_literal: true

# :nodoc
class UserAuthentication
  attr_accessor :email_input, :password_input

  def initialize(email_input, password_input)
    @email_input = email_input
    @password_input = password_input
    records_user
  end

  def records_user
    @records = [
      { username: 'aniket', emailid: 'aniket@gmail.com', password: 123_456 },
      { username: 'ravi', emailid: 'ravi@gmail.com', password: 'ravi123' },
      { username: 'jay', emailid: 'jaygmail.com', password: 123 },
      { username: 'raj', emailid: 'rajgmail.com', password: 'raj123' }
    ]
  end

  def login_user
    authenticated_user = @records.select do |record|
      record[:emailid] == email_input && record[:password] == password_input
    end

    if authenticated_user
      puts 'Login Successfully'
    else
      puts 'Please check your username and password'
    end
  end
end

puts 'Enter your username:'
email_input = gets.chomp
puts 'Enter your password: '
password_input = gets.chomp
process = UserAuthentication.new(email_input, password_input)
process.login_user
