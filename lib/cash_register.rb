class CashRegister
  attr_accessor :total, :discount
  def initialize(employe_discount = nil)
    @total = 0 
    @discount = employe_discount
  end 
  
  def add_item(title, price, quantity = nil)
    quantity == nil ?  @total += price : @total += price * quantity
   
  end 
  
  def apply_discount 
    @total = @total - ( (@total * @discount) / 100 ) 
    "After the discount, the total comes to $#{@total}."
  end
  
end
