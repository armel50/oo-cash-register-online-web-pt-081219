class CashRegister
  attr_accessor :total, :discount, :array, :last_item_price
 
   
  
  def initialize(employe_discount = nil)
    @total = 0 
    @discount = employe_discount
     @array = []
   
  end 
  
  def add_item(title, price, quantity = nil)
   
    if quantity == nil 
        @array << title
      @total += price 
      @last_item_price = price
    else
      quantity.times{ @array << title}
      @total += price * quantity 
    end
   
     
  end 
  
  def apply_discount 
    if @discount != nil
      
       @total = @total - ( (@total * @discount) / 100 ) 
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end

  end
  
  def items 
   @array
  end 
  
  def void_last_transaction 
  end
  
end
