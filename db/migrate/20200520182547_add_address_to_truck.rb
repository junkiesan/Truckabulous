class AddAddressToTruck < ActiveRecord::Migration[6.0]
  def change
    add_column :trucks, :address, :string
  end
end
