require 'pry'
# binding.pry
# learn/rspec --fail-fast

class CashRegister
attr_accessor :total, :discount, :items, :last_transaction

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

# def add_item(title, amount, quantity=1)
#     self.total += amount * quantity
#     quantity.times do
#       items << title
#     end
#     self.last_transaction = amount * quantity
#   end

def add_item(item_title, price, quantity = 1)
  self.total += price * quantity
  quantity.times do
    items << item_title
  # end
  # self.last_transaction = price * quantity
end

def void_last_transaction
  self.total -= self.last_transaction
end


end
