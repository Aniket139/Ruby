# frozen_string_literal: true

# :nodoc
class RandomNumberGenerator
  def generate_random_number
    5.times do
      puts rand(1..100)
    end
  end
end

process = RandomNumberGenerator.new
process.generate_random_number
