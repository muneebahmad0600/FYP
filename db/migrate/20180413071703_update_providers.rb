class UpdateProviders < ActiveRecord::Migration[5.1]
  def change
    change_table :providers do |t|
      t.remove :user_name
      t.remove :password
      t.string :delivery_start_time
      t.string :delivery_end_time
      t.string :delivery_charges
    end
  end
end
