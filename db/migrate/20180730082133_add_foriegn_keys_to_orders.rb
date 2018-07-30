class AddForiegnKeysToOrders < ActiveRecord::Migration[5.1]
  def change
    change_table :orders do |t|
      t.string :status
      t.integer :bill
    end
    add_reference :orders, :providers
    add_reference :orders, :users
  end
end
