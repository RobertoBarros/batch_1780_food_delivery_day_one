class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    loop do
      print_options
      action = gets.chomp.to_i
      route_action(action)
    end
  end

  private

  def print_options
    puts "-" * 50
    puts "1 - Add a meal"
    puts "2 - List all meals"
    puts "-" * 50
    puts "3 - Add a customer"
    puts "4 - List all customers"
    puts "-" * 50
    puts "Select an option:"
  end

  def route_action(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    end
  end
end
