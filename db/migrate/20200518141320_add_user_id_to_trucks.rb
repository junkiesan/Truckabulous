class AddUserIdToTrucks < ActiveRecord::Migration[6.0]
  def change
    add_reference :trucks, :users, foreign_key: true
  end
end
