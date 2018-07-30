class AddProvideridToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :providers
  end
end
