require 'pry'
class CashRegister
    attr_reader :discount
    attr_accessor :total, :items
    #@@all = []
    def initialize(discount=0)
        @total = 0
        @discount = discount 
        @items = []      
    end
    def add_item(title, price, quantity=1)
        @price = price 
        @quantity = quantity
        self.total = self.total.to_f
        self.total = self.total + price * quantity
        quantity.times do self.items << title
        end 
    end
    def apply_discount
        if @discount == 20
            self.total = self.total * 0.8
            self.total = self.total.to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end
    def items
      @items
    end

    def void_last_transaction 
        @quantity.times do self.total = self.total - @price
        end
        
    end 
end
#binding.pry
#0
#cash_register = CashRegister.new
#cash_register_with_discount = CashRegister.new(20)