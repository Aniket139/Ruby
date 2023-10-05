# frozen_string_literal: true

# :nodoc
class NestedLoopPatterns
  attr_accessor :size, :character

  def initialize(size, character)
    @size = size
    @character = character
  end

  def square_pattern
    puts '=========================================================='
    puts 'Square Pattern'
    puts '=========================================================='
    # rubocop:disable Style/For, Lint/UselessAssignment
    for i in 1..5
      for j in 1..size
        print character
      end
      puts
    end
    # rubocop:enable Style/For
  end

  def triangle_pattern
    puts '=========================================================='
    puts 'triangle Pattern'
    puts '=========================================================='
    # rubocop:disable Style/For
    for i in 1..6
      for j in 1..i
        print character
      end
      puts
    end
    # rubocop:enable Style/For
  end
end

size = 10
character = '*'
pattern = NestedLoopPatterns.new(size, character)
pattern.square_pattern
pattern.triangle_pattern
