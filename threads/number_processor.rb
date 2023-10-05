# frozen_string_literal: true

# :nodec
class NumberProcessor
  attr_accessor :numbers, :mutex

  def initialize(numbers)
    @numbers = numbers
    @mutex = Mutex.new
    @result = {}
  end

  def calculate_square_root
    @threads = []

    numbers.each do |num|
      @threads << Thread.new do
        square_root = Math.sqrt(num)
        @mutex.synchronize do
          @result[num] = square_root
        end
      end
    end

    def squre
      @threads.each(&:join)
      @result.each do |number, square_root|
        puts "Number: #{number}, Square Root: #{square_root}"
      end
    end
  end
end

numbers = gets.chomp.split.map(&:to_i)
processor = NumberProcessor.new(numbers)
processor.calculate_square_root
processor.squre
