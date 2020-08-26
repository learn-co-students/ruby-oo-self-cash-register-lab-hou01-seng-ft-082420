require 'pry'

class CashRegister

   attr_accessor :total
   
    def initialize(discount=0) #Good
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title,price,quantity = 1) #Good
        original_total = @total
        @total += (price * quantity)
        quantity.times {@items << title}
        @last = price * quantity
    end

    def discount #good
        @discount
    end

    def apply_discount
        self.total = self.total - (self.total * (self.discount/100.0))
        if self.discount > 0
            then p "After the discount, the total comes to $#{@total.to_i}."
                else p "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - @last 
    end


end


