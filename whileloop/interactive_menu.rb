# frozen_string_literal: true

# :nodoc
class InteractiveMenu
  def interactive_menu
    while true
      puts 'Enter Number :'
      choice = gets.chomp
      case choice
      when '1'
        puts 'you are selected DashBoard'
      when '2'
        puts 'you are selected Courses'
      when '3'
        puts 'you are selected Contact'
      when 'exit'
        break
      else
        puts 'Invalid choice! Please try again.'
      end
    end
  end
end

process = InteractiveMenu.new
process.interactive_menu
