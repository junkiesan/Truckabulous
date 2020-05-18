class DeleteForeignKeyUserId < ActiveRecord::Migration[6.0]
  def change
    remove_reference :trucks, :users, index: true, foreign_key: true
  end
end
