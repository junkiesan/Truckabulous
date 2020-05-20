class Booking < ApplicationRecord
  NUMBER_OF_PARTICIPANTS = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

  belongs_to :user
  belongs_to :truck
  validates :date, :number_of_participants, presence: true
  validates :number_of_participants, inclusion: { in: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100] }
end
