class CashRegister
    attr_accessor :total, :discount
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
    end

    def total 
        @total
    end

    def add_item(title, price, quantity=1)
        for i in 1..quantity do 
            @cart << title
        end 
        @total += price*quantity
        @last_price = price*quantity
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            @total -= (@total*@discount*0.01).to_i
        end 
        return "After the discount, the total comes to $#{@total}."
    end

    def items
        @cart
    end

    def void_last_transaction 
        #individual_Price = @last_price / @last_quantity
        @total -= @last_price  
        if @total == 0
            @total = 0.0
        end 
    end
end
