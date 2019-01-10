require_relative '../lib/coin_changer'

describe CoinChanger do

  before :each do
    @coin_changer = CoinChanger.new
  end

  it "returns the correct change given 20.00 of cash and a 12.50 purchase price" do
    purchase_price = 12.50
    cash = 20.00

    result = [ 5.00, 1.00, 1.00, 0.25, 0.25 ]

    expect(result).to eq(@coin_changer.calculate(cash, purchase_price))
  end

  it "returns the correct change given 20.00 of cash and a 15.00 purchase price" do
    purchase_price = 15.00
    cash = 20.00

    result = [ 5.00 ]

    expect(result).to eq(@coin_changer.calculate(cash, purchase_price))
  end

  it "returns the correct change given 20.00 of cash and a 11.00 purchase price" do
    purchase_price = 11.00
    cash = 20.00

    result = [ 5.00, 1.00, 1.00, 1.00, 1.00 ]

    expect(result).to eq(@coin_changer.calculate(cash, purchase_price))
  end
end
