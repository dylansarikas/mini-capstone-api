class Product < ApplicationRecord

  validates :name, :price, :inventory, presence: true
  validates :price, numericality: { greater_than: 0}
  validates :name, uniqueness: true
  validates :description, length: { in: 10..500 }

  def supplier
    Supplier.find_by(id: supplier_id)
  end

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
