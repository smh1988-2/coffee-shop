class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :customer
      t.references :coffee
      t.integer :price
    end
  end
end
