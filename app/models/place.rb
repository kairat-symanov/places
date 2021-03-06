class Place < ApplicationRecord
  before_validation { name.capitalize! }
  before_validation { category.capitalize! }
  validates :name, presence: true, length: { minimum: 3 }
  validates :category, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { maximum: 500 }

  belongs_to :user
  belongs_to :category
end
