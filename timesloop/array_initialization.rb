# frozen_string_literal: true

# :nodoc
class ArrayInitialization
  def process
    array_length = 5
    value = 0

    array = []
    array_length.times do
      array << value
    end
    print array
  end
end

output = ArrayInitialization.new
output.process
