class AddForeignKeyToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :providers, :users
  end
end
