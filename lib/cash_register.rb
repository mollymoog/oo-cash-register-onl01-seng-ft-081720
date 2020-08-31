require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize (discount = 0) 
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item (title, price, quantity = 1)
    while quantity > 1 do
      @items << title
      quantity -= 1
    end
    @total += (quantity * price)
    @total
  end

  def apply_discount
    discount = (@total * @discount) / 100
    if @discount > 0
      @total -= discount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
end
