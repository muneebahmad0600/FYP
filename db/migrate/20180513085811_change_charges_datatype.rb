class ChangeChargesDatatype < ActiveRecord::Migration[5.1]
  def change
    change_table :providers do |t|
      t.remove :delivery_charges
      t.string :delivery_charges
    end
  end
end
