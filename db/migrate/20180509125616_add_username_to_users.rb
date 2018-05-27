class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :user_name
    end
    add_index :users, :user_name, :unique=>true
  end
end
