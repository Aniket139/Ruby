# frozen_string_literal: true

# :nodec
class RagularExpression
  attr_accessor :email

  def initialize
    puts 'Enter your email id :'
    @email = gets.chomp
    puts '============================================================'
  end

  def email_format
    @regex = /\A[\w+\-.]+@[a-z\d-]+(\.[a-z]+)*\.[a-z]+\z/i
    @identifier = email.match(/(.*)@/)[1]
    @email_detail = email.match(/@(.*)\./)[1]
    @prefix = email.match(/[^.]+\z/)
  end
  
  def output
    if email.match?(@regex)
      puts 'Email is valid!'
      puts '============================================================'
      puts "Identifier: #{@identifier}"
      puts "Email Domain: #{@email_detail}"
      puts "Top-Level Domain: #{@prefix}"
    else
      puts 'Email is invalid!'
    end
  end
end

input_email = RagularExpression.new
input_email.email_format
input_email.output
