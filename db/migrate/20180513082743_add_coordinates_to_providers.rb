class AddCoordinatesToProviders < ActiveRecord::Migration[5.1]
  def change
    change_table :providers do |t|
      t.integer :longitude
      t.integer :latitude
    end
  end
end
