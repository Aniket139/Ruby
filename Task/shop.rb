# frozen_string_literal: true

# :nodec
class Shop
  attr_accessor :order_list, :minimum_order, :maximum_order,
                :order_date, :order_amount

  def initialize
    @total_orders = 0
    @total_amounts = 0
    @minimum_order = nil
    @maximum_order = nil
    @order_list = []
  end

  def create_new_order
    puts 'Enter order details in the format: DD-MM-YYYY Amount'
    order_input = gets.chomp.split(' ')

    if order_input.length == 2
      @order_date = order_input[0]
      @order_amount = order_input[1].to_f
      order_list << { date: order_date, amount: order_amount }
      @total_orders += 1
      @total_amounts += order_amount
      puts 'Order added successfully!'
    else
      puts 'Invalid input. Please enter in the correct format.'
    end
  end

  def print_day_details
    puts 'Enter date in the format: DD-MM-YYYY'
    day_input = gets.chomp
    day_orders = order_list.select { |order| order[:date] == day_input }
    if day_orders.empty?
      puts 'No orders found for the given date.'
    else
      total_day_orders = day_orders.length
      total_day_amount = day_orders.sum { |order| order[:amount] }
      minimum_day_order = day_orders.min_by { |order| order[:amount] }[:amount]
      maximum_day_order = day_orders.max_by { |order| order[:amount] }[:amount]
      average_day_order = total_day_amount / total_day_orders.to_f
      puts '------------------------------------------'
      puts "Details for #{day_input}:"
      puts "Total Order #: #{total_day_orders}"
      puts "Total Amount: #{total_day_amount}"
      puts "Minimum Order: #{minimum_day_order}"
      puts "Maximum Order: #{maximum_day_order}"
      puts "Average Order: #{average_day_order}"
      puts '------------------------------------------'
    end
  end

  def print_month_details
    puts 'Enter month and year in the format: MM YYYY'
    month_input = gets.chomp.split(' ')
    return unless month_input.length == 2

    month = month_input[0].to_i
    year = month_input[1].to_i
    month_orders = @order_list.select do |order|
      order[:date].split('-')[1].to_i == month && order[:date].split('-')[2].to_i == year
    end
    total_month_order = month_orders.size
    puts "Total Order : #{total_month_order}"
    month_amount = month_orders.map { |a| a[:amount] }
    total_month_amount = month_amount.sum
    puts "Total Amount: #{total_month_amount}"
    min_month_order = month_amount.min
    puts "Minimum Order: #{min_month_order}"
    max_month_order = month_amount.max
    puts "Maximum Order: #{max_month_order}"
  end

  def process
    loop do
      puts '========================='
      puts 'Welcome to My Shop'
      puts '========================='
      puts "Today's Details"
      puts '-------------------------'
      total_orders = @order_list.size
      puts "Total Order : #{total_orders}"
      amounts = @order_list.map { |a| a[:amount] }
      total_amounts = amounts.sum
      puts "Total Amount:  #{total_amounts}"
      min_order = amounts.min
      minimum_order = min_order
      puts "Minimum Order: #{minimum_order}"
      max_order = amounts.max
      maximum_order = max_order
      puts "Maximum Order:  #{maximum_order}"
      unless total_orders.zero?
        avg_order = total_amounts / total_orders
        puts "Average Order: #{avg_order}"
      end

      puts '======================'
      puts '1 Create New Order'
      puts '2 Print Day Details'
      puts '3 Print Month Details'
      puts 'How may I help you? (1, 2, 3 or quit)'

      choice = gets.chomp

      case choice
      when '1'
        create_new_order
      when '2'
        print_day_details
      when '3'
        print_month_details
      when 'quit'
        break
      else
        puts 'Invalid choice! Please try again.'
      end
    end
  end
end

obj = Shop.new
obj.process
