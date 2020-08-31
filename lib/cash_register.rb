require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize (discount = 0) 
    @total = 0 
    @discount = discount
    @price
    @quantity
    @items = []
  end
  
  def add_item (title, price, quantity = 1)
    @price = price
    @quantity = quantity
    @total += (quantity * price)
    while quantity > 0 do
      @items << title
      quantity -= 1
    end
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
  
  def void_last_transaction
    @total -= @price * @quantity
  end 
  
end
