class RemoveReferenceFromTrucks < ActiveRecord::Migration[6.0]
  def change
    remove_column :trucks, :users_id
  end
end
