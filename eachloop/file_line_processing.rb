# frozen_string_literal: true

# :nodoc
class FileLineProcessing
  attr_accessor :file_name, :file_content

  def initialize(file_name)
    @file_name = file_name
    @file_content = ''
  end

  def reading_file
    File.open(file_name, 'r') do |file|
      @file_content = file.read
      # puts "#{file_content}"
    end
  end

  def counting_each_line
    no = 1
    file_content.each_line do |lines|
      words = lines.split
      puts "---------line content = #{lines}"
      puts "#{no} : #{words.length}"
      no += 1
    end
  end
end

file_name = 'input.txt'
process = FileLineProcessing.new(file_name)
process.reading_file
process.counting_each_line
