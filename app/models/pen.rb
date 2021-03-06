class Pen < ApplicationRecord
  belongs_to :pice
  


  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  
  validate :pen_present

  before_save :finalize

  def price
    if persisted?
      self[:price]
    else
     pice.price
    end
  end

  def phone
     pice.phone
  end

  def mtype
     pice.mtype
  end

  def description
     pice.description
  end

  def total
    price.to_f * quantity.to_f
  end

  def tprice
      Pen.sum(:price)
  end

  def tquantity
      Pen.sum(:quantity)
  end
  

private
  def pen_present
    if quantity.nil?
      errors.add(:Pen, "is not a valid order.")
    end
  end

  def finalize
    self[:price] = price.to_f
    self[:total] = quantity.to_f * self[:price]

  end
end
