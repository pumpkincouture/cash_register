require './lib/cash_register'
require './lib/register_ui'
require './lib/coin_changer'

ui = RegisterUI.new
coin_changer = CoinChanger.new
register = CashRegister.new(ui, coin_changer)

user_input = register.get_user_inputs
register.make_change(user_input)
