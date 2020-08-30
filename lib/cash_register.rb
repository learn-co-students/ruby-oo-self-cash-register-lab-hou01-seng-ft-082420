require 'pry'
class CashRegister
   attr_accessor :total , :discount, :items, :add_item, :apply_discount
    
  
    def initialize(discount= 0)
     @total = 0.0
     @discount = discount
     @items = []
   end

   def add_item(title, price, quantity = 0)
    @title= title
    @price = price
    @quantity = quantity 
    
    
    if quantity > 0 
      self.total += price * quantity


   @items << ("#{title}," * quantity).split(",")
   @items.flatten!

    else
      self.total += price

      @items << title 
    end
    
    
    #binding.pry

   end
   def apply_discount
      if self.discount > 0 
         self.total = self.total - self.total * discount/100
          "After the discount, the total comes to $#{self.total.to_i}."
      else
          self.total
         "There is no discount to apply."

      end
   end
   

   def void_last_transaction
      if @quantity > 0 
         self.total -= @price * @quantity 

      else self.total -= @price
      end
   end
   
   
#@quantity = @quantityend





  
end 


