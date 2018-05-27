class MoveForeignKey < ActiveRecord::Migration[5.1]
  def change
    remove_reference :providers, :users
    add_reference :users, :providers
  end
end
