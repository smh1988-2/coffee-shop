class Customer < ActiveRecord::Base
    has_many :orders
    has_many :coffees, through: :orders

    def self.names
        pluck(:name) #ActiveRecord method!
    end

    def order_coffee coffee_title, price
        coffee = Coffee.find_by(title: coffee_title)
        Order.create(price: price, coffee_id: coffee.id, customer_id: self.id)
        Order.last.receipt
        #puts "#{name} ordered a #{coffee_title} for $#{price}"
    end

    def total_purchases_amount
        self.orders.pluck(:price).sum
        #self.orders.sum(:price)
    end

    #this doesn't work
    def dislike_coffee coffee_title
        coffee = Coffee.find_by(title: coffee_title)
        x = self.orders.where("coffee_id = ?, coffee.id").last.destroy
        p "#{name} has been refunded #{x.price}"
    end

end