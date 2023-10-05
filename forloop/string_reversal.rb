# frozen_string_literal: true

# :nodoc
class StringReversal
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def reversal
    reversed_string = ''
    # rubocop:disable Style/For
    for i in (string.length - 1).downto(0) do
      puts "-------------------- i #{i}"
      puts "-------------------- string[i] #{string[i]}"
      reversed_string += string[i]
    end
    # rubocop:enable Style/For
    puts reversed_string
  end
end

string = gets.chomp
process = StringReversal.new(string)
process.reversal
