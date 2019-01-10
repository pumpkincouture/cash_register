class CoinChanger
  MONIES = [ 5.00, 1.00, 0.25 ]

  def calculate(cash, purchase_price)
    difference = cash - purchase_price

    change = []

    MONIES.each do | money |
      while difference >= money
        change << money
        difference -= money
      end
    end
    change
  end
end
