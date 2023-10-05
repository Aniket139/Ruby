# frozen_string_literal: true

# :nodoc
class FileManipulation
  attr_accessor :folder_path

  def initialize(folder_path)
    @folder_path = folder_path
  end

  def call
    unless File.directory?(folder_path)
      puts 'Invalid folder path!'
      return
    end

    process_of_file_path
  end

  private

  def process_of_file_path
    Dir.foreach(folder_path) do |file_name|
      @file_extension = File.extname(file_name)
      puts "----------------------------------------#{file_name}"
      move_file(file_name)
    end
  end

  def move_file(file_name)
    new_extension = '.rb'
    old_extension = '.txt'
    return unless @file_extension == '.txt'

    new_file_name = File.basename(file_name, old_extension) + new_extension
    puts new_file_name
    puts file_name

    source_path = File.join('./', file_name)
    target_path = File.join('../', new_file_name)
    File.rename(source_path, target_path)
  end
end

folder_path = './'
FileManipulation.new(folder_path).call
