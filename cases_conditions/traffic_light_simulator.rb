# frozen_string_literal: true

# :nodec
class TrafficLightSimulator
  attr_accessor :current_state

  def initialize(current_state)
    @current_state = current_state
  end

  # rubocop:disable Metrics/MethodLength
  def traffic_light_simulator
    puts "Current state: #{current_state}"
    5.times do |_i|
      case current_state
      when 'Red'
        sleep(1)
        'Green'
      when 'Green'
        'Yellow'
      when 'Yellow'
        'Red'
      end
    end
  end
  # rubocop:enable Metrics/MethodLength
end

current_state = 'Red'
process = TrafficLightSimulator.new(current_state)
process.traffic_light_simulator
