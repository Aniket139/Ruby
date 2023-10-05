# frozen_string_literal: true

# :nodec
class LanguageTranslator
  attr_accessor :input_words

  def initialize(input_words)
    @input_words = input_words
  end

  def language_translator
    print 'Enter your language: '
    choice = gets.chomp

    case choice
    when 'French'
      puts 'bonjour'
    when 'Spanish'
      puts 'hola'
    when 'German'
      puts 'hallo'
    else
      puts 'Invalid choice.'
    end
  end
end

input_words = 'hello'
process = LanguageTranslator.new(input_words)
process.language_translator
