class CashRegister
  attr_accessor :total, :discount
  def initialize(employe_discount = nil)
    @total = 0 
    @discount = employe_discount
  end
  
end
