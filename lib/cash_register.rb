require 'pry'

class CashRegister

    attr_accessor :total, :discount, :cart, :cart_price
  

    def initialize(discount = 0)
        total = 0
        @cart_price = []
        cart = []
        #binding.pry
        @total = total
        @discount = discount
        @cart = cart
        @cart_price = cart_price

    end 

    def add_item (title, price, quantity = 1)
        #binding.pry
        self.total += (price * quantity)
        @cart_price << (price * quantity)
        for i in (0...quantity)
            @cart << title
        end 
    end 

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        else     
            self.total *= ((100.0-self.discount)/100.0)
            return "After the discount, the total comes to $#{self.total.to_i}."
        end 
    end 

    def items
       self.cart
    end 

    def void_last_transaction
        #binding.pry
        
        self.total -= self.cart_price.pop
    end 

end 

