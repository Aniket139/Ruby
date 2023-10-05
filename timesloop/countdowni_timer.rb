# frozen_string_literal: true

# :nodoc
class CountdownTimer
  def timer
    10.times do |i|
      puts " #{10 - i} seconds remaining"
      sleep(1)
    end
  end
end

process = CountdownTimer.new
process.timer
