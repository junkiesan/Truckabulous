class AddUsersToTrucks < ActiveRecord::Migration[6.0]
  def change
    add_reference :trucks, :user, index: true
  end
end
