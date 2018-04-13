class CreateConsumers < ActiveRecord::Migration[5.1]
  def change
    create_table :consumers do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.timestamps
    end
  end
end
