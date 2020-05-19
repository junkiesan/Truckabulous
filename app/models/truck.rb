class Truck < ApplicationRecord
  CATEGORIES = ['Yoga', 'Cocktails', 'Kids', 'Food', 'Pups & Kitties', 'Fortune Teller']

  belongs_to :user

  validates :name, uniqueness: true, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: { in: ['Yoga', 'Cocktails', 'Kids', 'Food', 'Pups & Kitties', 'Fortune Teller'] }
end
