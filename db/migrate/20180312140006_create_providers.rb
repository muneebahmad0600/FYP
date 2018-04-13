class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :provider_name
      t.string :user_name
      t.string :password
      t.string :location
      t.timestamps
    end
  end
end
