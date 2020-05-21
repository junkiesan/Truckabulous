class AddCoordinatesToTrucks < ActiveRecord::Migration[6.0]
  def change
    add_column :trucks, :latitude, :float
    add_column :trucks, :longitude, :float
  end
end
