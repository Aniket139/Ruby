# frozen_string_literal: true

# :nodoc
class ListComprehension
  attr_accessor :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def list
    # rubocop:disable Style/For
    for number in numbers do
      if number.even?
        squar_root = number**2
        puts "#{number} = #{squar_root}"
      end
    end
    # rubocop:enable Style/For
  end
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
filter_list = ListComprehension.new(numbers)
filter_list.list
















class FileManipulation
  attr_accessor :folder_path

  def initialize(folder_path)
    @folder_path = folder_path
  end  

  def call
    unless File.directory?(folder_path)
      puts "Invalid folder path!"
      return
    end
    process_of_file_path
  end

  private

  def process_of_file_path
    new_extension = ".rb"
    old_extension = ".txt"
    Dir.foreach(folder_path) do |file_name|
      file_extension = File.extname(file_name)
      puts "----------------------------------------#{file_name}"
      if file_extension == ".txt"
        new_file_name = File.basename(file_name, old_extension) + new_extension
        puts new_file_name
        puts file_name

        source_path = File.join('./', file_name )
        target_path = File.join('../', new_file_name)
        File.rename(source_path, target_path)
      end
    end
  end
end

folder_path = './'
process = FileManipulation.new(folder_path).call