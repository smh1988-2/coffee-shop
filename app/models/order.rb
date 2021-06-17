class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :coffee

  def receipt
    # puts "#{self.customer.name} ordered a #{self.coffee.title} for $#{self.price}"
    puts "#{customer.name} ordered a #{coffee.title} for $#{price}"
  end
 
end