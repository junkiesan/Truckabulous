class ChangeDateFromStringToDateForBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :date, 'date USING CAST(date AS date)'
  end
end
