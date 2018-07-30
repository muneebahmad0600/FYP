class CreateProviderProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :provider_products do |t|
      t.integer :quantity
      t.timestamps
    end
    add_reference :provider_products, :providers
    add_reference :provider_products, :products
  end
end
