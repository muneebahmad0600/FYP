class CreateOrderedProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :ordered_products do |t|
      t.integer :quantity
      t.integer :product_price
      t.timestamps
    end
    add_reference :ordered_products, :products 
    add_reference :ordered_products, :orders
  end
end
