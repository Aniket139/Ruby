# frozen_string_literal: true

# :nodoc
class SimpleAnimation
  def loading_bar
    10.times do |i|
      print "\rLoading #{'.' * i} #{' ' * i}"
      sleep(0.5)
    end
  end
end

process = SimpleAnimation.new
process.loading_bar
