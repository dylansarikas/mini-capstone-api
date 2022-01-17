class Product < ApplicationRecord

  def is_discounted?
    #price < 19, this is all this needs
    discount = false
    discount = true if price < 11
    return discount
  end

  def tax
    taxes = price * 0.09
  end

  def total
    total = price + tax
  end

end
