# frozen_string_literal: true

# :nodec
class WordCounter
  attr_accessor :file_path, :file_content

  def initialize(file_path)
    @file_path = file_path
    @file_content = ''
    @word_counts = {}
  end

  def read_file
    File.open(file_path, 'r') do |file|
      @file_content = file.read
      puts file_content
    end
  end

  def count_words
    @words = file_content.split
    @total_words = @words.count
    puts "---------------Total Words : #{@total_words}"

    @words.each do |word|
      @word_counts[word] ||= 0
      @word_counts[word] += 1
    end
  end

  def count_unique_word
    File.open('word_count.txt', 'w') do |file|
      @word_counts.each do |word, count|
        file.puts "#{word}: #{count}" if count > 1
      end
    end
  end
end

file_path = 'input.txt'
counter = WordCounter.new(file_path)
counter.read_file
counter.count_words
counter.count_unique_word
