require_relative 'register_ui'
require_relative 'coin_changer'

class CashRegister

  def initialize(ui, coin_changer)
    @ui = ui
    @coin_changer = coin_changer
  end

  def get_user_inputs
    user_input = @ui.prompt_for_inputs
    parse_user_input(user_input)
  end

  def make_change(user_inputs)
    cash = user_inputs[0].to_f
    purchase_price = user_inputs[1].to_f

    change = @coin_changer.calculate(cash, purchase_price)

    @ui.show(change)
  end

  private

  def parse_user_input(user_input)
    user_input.split(",")
  end
end
