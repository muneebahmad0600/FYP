class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_barcode
      t.decimal :product_price
      t.string :product_size
      t.string :product_type
      t.string :product_color
      t.timestamps
    end
  end
end
