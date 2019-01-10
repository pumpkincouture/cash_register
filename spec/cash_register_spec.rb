require_relative '../lib/cash_register'
require_relative '../lib/coin_changer'

describe CashRegister do

  before :each do
    @ui = double("RegisterUI")
    @coin_changer = CoinChanger.new
    @cash_register = CashRegister.new(@ui, @coin_changer)
  end

  it "gets the users purchase price and a cash amount" do
    user_input_string = "20.00,10.00"
    allow(@ui).to receive(:prompt_for_inputs).and_return(user_input_string)

    result = [ "20.00", "10.00" ]

    expect(@cash_register.get_user_inputs).to eq(result)
  end

  it "returns the correct change given 20.00 of cash and a 12.50 purchase price" do
    user_inputs = [ "20.00", "12.50" ]

    result = [ 5.00, 1.00, 1.00, 0.25, 0.25 ]

    expect(@ui).to receive(:show).with(result)

    @cash_register.make_change(user_inputs)
  end

end
