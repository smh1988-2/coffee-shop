class Coffee < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  has_many :customers, through: :orders

  def unique_customer_names
    customers.distinct.pluck(:name)
  end

  def self.most_ordered
    all.max_by{|coffee| coffee.orders.length}
    all.includes(:orders).max_by{|coffee| coffee.orders.length}
  end
end