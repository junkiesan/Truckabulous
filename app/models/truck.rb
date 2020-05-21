class Truck < ApplicationRecord

  # Variables needed for categories
  CATEGORIES = ['Yoga', 'Cocktails', 'Kids', 'Food', 'Pups & Kitties', 'Fortune Teller']

  # Attractions
  belongs_to :user

  # Cloudinary
  has_one_attached :photo

  # Validations
  validates :name, uniqueness: true, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: { in: ['Yoga', 'Cocktails', 'Kids', 'Food', 'Pups & Kitties', 'Fortune Teller'] }

  # Geocoding
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
end
