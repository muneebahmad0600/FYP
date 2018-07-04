class ChangeCoordinatesDatatype < ActiveRecord::Migration[5.1]
  def change
    change_column :providers, :longitude, :double
    change_column :providers, :latitude, :double
  end
end
