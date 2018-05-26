require 'pry'
# binding.pry
# learn/rspec --fail-fast

class CashRegister
attr_accessor :total, :discount, :last_transaction, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def apply_discount
  if @discount > 0
    @discount_amount = (price * discount)/100
    @total -= @discount_amount
    return "After the discount, the total comes to $#{total}."
  else
    return "There is no discount to apply."
  end
end

def add_item(item, price, quantity = 1)
  @last_transaction = price
  self.total += price * quantity
  if quantity > 1
    counter = 0
    while counter < quantity
      @items << items
      counter += 1
    end
  else
    @items << item
  end
end

def void_last_transaction
     self.total -= self.total - self.last_transaction
end


end
