class UpdateUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :user_type
      t.string :location
    end
  end
end
