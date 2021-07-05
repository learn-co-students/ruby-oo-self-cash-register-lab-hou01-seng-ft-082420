require 'pry'

class CashRegister
    
    attr_accessor :total, :discount, :quantity, :items, :title, :last

    def initialize (discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item (title, price, quantity = 1)
        @title = title
        @price = price
        @quantity = quantity
        @total += (@price*@quantity)
        @last_total = (@price*@quantity)
        @quantity.times {@items << @title}
        @last = @last_total
    end

    def apply_discount
        if self.discount > 0
            self.total -= (self.total * discount/100)
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last
    end

end
