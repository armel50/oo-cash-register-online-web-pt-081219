class CashRegister
  attr_accessor :total, :discount, :array 
 
   
  
  def initialize(employe_discount = nil)
    @total = 0 
    @discount = employe_discount
     @array = []
   
  end 
  
  def add_item(title, price, quantity = nil)
     @array << title
    if quantity == nil 
      @total += price 
    else
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
  
end
