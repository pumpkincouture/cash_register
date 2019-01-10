class RegisterUI

  def prompt_for_inputs
    puts "Please enter your cash amount and the purchase price of item"
    puts "Desired input should look like this: 20.00, 10.00"
    gets.chomp
  end

  def show(change)
    puts "Your change is:"
    change.map { |amount| puts "Money denomination: #{amount}" }
  end
end
