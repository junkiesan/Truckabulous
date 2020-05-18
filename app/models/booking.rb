class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :truck
  validates :date, :number_of_participants, presence: true
end
