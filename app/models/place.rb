class Place < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :category, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { maximum: 500 }
end
